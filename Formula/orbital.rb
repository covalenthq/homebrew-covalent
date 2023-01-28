class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.15.tar.gz"
  sha256 "94c4679f3fbc2a836edfa358fbc36fb579449b5d8b6e5d7d491e50890f4a28e2"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    ENV["GEM_PATH"] = libexec

    resources.each do |r|
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end

    system "gem", "build", "orbital.gemspec"
    system "gem", "install", "orbital-1.0.15.gem", "--no-document"

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
