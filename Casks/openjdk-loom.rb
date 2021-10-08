cask "openjdk-loom" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version_major = 18
  version_minor = 2
  version_patch = 74

  version "#{version_major}.#{version_minor}.#{version_patch}"

  url "https://download.java.net/java/early_access/loom/#{version_minor}/openjdk-#{version_major}-loom+#{version_minor}-#{version_patch}_macos-#{arch}_bin.tar.gz", verified: "https://download.java.net/java/early_access/loom"
  if Hardware::CPU.intel?
    sha256 "8350da9ceb94beae89de4c7d124a2fad8e7dfc62ed39af8a36ca296bda5ae08f"
  else
    sha256 "9acbd6377f2a8452fc0e5f6874484173eeee63681dfa0f3affcfd3d13f1ee012"
  end

  name "OpenJDK Development Kit Project Loom EA Release"
  desc "Development kit for the Java programming language"
  homepage "https://jdk.java.net/loom/"

  artifact "jdk-#{version_major}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-loom-#{version}.jdk"
end
