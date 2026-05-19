class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.18.tar.gz"
  sha256 "5a53bbaf57e16c4b6581edde886181fe362916cd4cecd0544aea6f042ceb5b56"
  license "MIT"

  bottle do
    root_url "https://github.com/covalenthq/homebrew-covalent/releases/download/orbital-1.0.18"
    sha256 cellar: :any,                 arm64_tahoe:  "c67019d404373a0264a6412a43ef9c083afdd689de0f22eabd8e0c47cc256c3a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9324b6b6bf4bda1e9c554f00dd37623616afab4b6bf7a79d681c5db829ba2d8e"
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
    system "gem", "install", "orbital-1.0.18.gem", "--no-document"

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
