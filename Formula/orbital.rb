class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.12.tar.gz"
  sha256 "6e6e56f89f30be3fb904528f70cbd8c51fa4c1effef15d29ceb64edb0c8f105b"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/covalenthq/homebrew-covalent/releases/download/orbital-1.0.12_1"
    sha256 cellar: :any,                 big_sur:      "7d925269a7a816ca918876c2b1d34e41c858e0441c671b687df9376a0c31fe17"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "006b1a5a5ea540bbffa3ba55846e0c82fd968355c8ab4acfd7dfb56cbac59089"
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
    system "gem", "install", "orbital-1.0.12.gem", "--no-document"

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
