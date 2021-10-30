class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.10.tar.gz"
  sha256 "9cc28d7ad04bc151e7ca71150a0a5b1e9d809d40cba2edc77bf0360694537a8f"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/covalenthq/homebrew-covalent/releases/download/orbital-1.0.10_1"
    sha256 cellar: :any,                 catalina:     "8ab61bb642dcd602e6d26ba7cdca98698873504cacec5059fd38f9ff88078ee8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a8d1cd2f189f906422cbcd48ffb1c3d57ed8fa8c41d1e9860863975456f7e6d9"
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
    system "gem", "install", "orbital-1.0.10.gem", "--no-document"

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
