class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.9.tar.gz"
  sha256 "2c26ce9f6d0673886a71c523e8421a5c3bff4192c8def346d4dab977dc6ba08c"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/covalenthq/homebrew-covalent/releases/download/orbital-1.0.8_1"
    rebuild 1
    sha256 cellar: :any,                 catalina:     "f7b8096e827df1112396bff92e2618cb0236c410ae6d930cce626efa2a6283f4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7b87e8eb59e5a2698c736b23b78bab24c86c6ca487dce0e55a10dee6224e59bd"
  end

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    ENV["GEM_PATH"] = libexec

    resources.each do |r|
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end

    system "gem", "build", "orbital.gemspec"
    system "gem", "install", "orbital-1.0.9.gem", "--no-document"

    env_vars = {
      PATH:                           "#{Formula["ruby"].opt_bin}:#{libexec}/bin:$PATH",
      ORBITAL_INSTALLED_VIA_HOMEBREW: "true",
      GEM_HOME:                       libexec.to_s,
      GEM_PATH:                       libexec.to_s,
    }

    (bin/"orbital").write_env_script libexec/"bin/orbital", env_vars
  end

  test do
    :ok
  end
end
