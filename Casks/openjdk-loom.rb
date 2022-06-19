cask "openjdk-loom" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version_major = 19
  version_minor = 6
  version_patch = 625

  version "#{version_major}.#{version_minor}.#{version_patch}"

  url "https://pkgmirror.covalenthq.com/loom/openjdk-#{version_major}-loom+#{version_minor}-#{version_patch}_macos-#{arch}_bin.tar.gz",
      verified: "https://pkgmirror.covalenthq.com/loom"
  if Hardware::CPU.intel?
    sha256 "c27180838a5491fe94b4f993da9523809031625b34e64c7338b3fc4c0758dd0b"
  else
    sha256 "c7711a2183ded8a543d36b16771febc01d2fc3c9f85432b597d6741911b96c16"
  end

  name "OpenJDK Development Kit Project Loom EA Release"
  desc "Development kit for the Java programming language"
  homepage "https://jdk.java.net/loom/"

  artifact "jdk-#{version_major}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-loom-#{version}.jdk"
end
