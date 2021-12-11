cask "openjdk-loom" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version_major = 18
  version_minor = 6
  version_patch = 282

  version "#{version_major}.#{version_minor}.#{version_patch}"

  url "https://pkgmirror.covalenthq.com/loom/openjdk-#{version_major}-loom+#{version_minor}-#{version_patch}_macos-#{arch}_bin.tar.gz", verified: true
  if Hardware::CPU.intel?
    sha256 "cafc5626122a198445f372216a1bbf809ca01252a82e0787dd866130ab6d391c"
  else
    sha256 "bfd6149e8cb5ba01816a73eabc15b62e45f5bdba41f41a635841aad5f2d1f764"
  end

  name "OpenJDK Development Kit Project Loom EA Release"
  desc "Development kit for the Java programming language"
  homepage "https://jdk.java.net/loom/"

  artifact "jdk-#{version_major}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-loom-#{version}.jdk"
end
