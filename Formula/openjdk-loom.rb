class OpenjdkLoom < Formula
  desc "Development kit for the Java programming language"
  homepage "http://jdk.java.net/loom/"
  version "18.2.74"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.java.net/java/early_access/loom/2/openjdk-18-loom+2-74_macos-aarch64_bin.tar.gz", using: :nounzip
      sha256 "9acbd6377f2a8452fc0e5f6874484173eeee63681dfa0f3affcfd3d13f1ee012"
    else
      url "https://download.java.net/java/early_access/loom/2/openjdk-18-loom+2-74_macos-x64_bin.tar.gz", using: :nounzip
      sha256 "8350da9ceb94beae89de4c7d124a2fad8e7dfc62ed39af8a36ca296bda5ae08f"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://download.java.net/java/early_access/loom/2/openjdk-18-loom+2-74_linux-aarch64_bin.tar.gz", using: :nounzip
      sha256 "b93ed449faa6948f058c055a48c2a30e54a5f9a45eb95df77119c08c743cb709"
    else
      url "https://download.java.net/java/early_access/loom/2/openjdk-18-loom+2-74_linux-x64_bin.tar.gz", using: :nounzip
      sha256 "7cee3ff133f6a15df3510dabf33871c206aa20a8e5cc08581f7281bf1a7835d0"
    end
  end

  license "GPL-2.0-only" => { with: "Classpath-exception-2.0" }

  livecheck do
    url :stable
    regex(/^jdk[._-]v?(\d+(?:\.\d+)*)-ga$/i)
  end

  keg_only :shadowed_by_macos

  on_linux do
    depends_on "alsa-lib"
    depends_on "cups"
    depends_on "fontconfig"
    depends_on "gcc"
    depends_on "libx11"
    depends_on "libxext"
    depends_on "libxrandr"
    depends_on "libxrender"
    depends_on "libxt"
    depends_on "libxtst"
    depends_on "unzip"
    depends_on "zip"

    ignore_missing_libraries "libjvm.so"
  end

  fails_with gcc: "5"

  def install
    dist_tarball = Pathname.pwd.children.find{ |f| f.file? and f.basename.to_s =~ /\.tar\.gz$/ }
    system "tar", "-x", "-f", dist_tarball.to_s
    dist_tarball.unlink

    unpacked_to_path =
      if OS.mac?
        Pathname.pwd / 'jdk-18.jdk'
      else
        Pathname.pwd / 'jdk-18'
      end

    libexec.install unpacked_to_path => "openjdk-loom.jdk"

    jdk_installed = libexec / "openjdk-loom.jdk"

    jdk_root =
      if OS.mac?
        jdk_installed / 'Contents' / 'Home'
      else
        jdk_installed
      end

    platform_name =
      if OS.mac?
        'darwin'
      else
        'linux'
      end

    bin.install_symlink Dir[jdk_root / "bin/*"]
    include.install_symlink Dir[jdk_root / "include/*.h"]
    include.install_symlink Dir[jdk_root / "include/#{platform_name}/*.h"]
    man1.install_symlink Dir[jdk_root / "man/man1/*"]
  end

  def caveats
    on_macos do
      <<~EOS
        For the system Java wrappers to find this JDK, symlink it with
          sudo ln -sfn #{opt_libexec}/openjdk-loom.jdk /Library/Java/JavaVirtualMachines/openjdk-loom.jdk
      EOS
    end
  end

  test do
    (testpath/"HelloWorld.java").write <<~EOS
      class HelloWorld {
        public static void main(String args[]) {
          System.out.println("Hello, world!");
        }
      }
    EOS

    system bin/"javac", "HelloWorld.java"

    assert_match "Hello, world!", shell_output("#{bin}/java HelloWorld")
  end
end
