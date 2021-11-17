cask "openjdk-loom" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version_major = 18
  version_minor = 5
  version_patch = 274

  version "#{version_major}.#{version_minor}.#{version_patch}"

  url "https://download.java.net/java/early_access/loom/#{version_minor}/openjdk-#{version_major}-loom+#{version_minor}-#{version_patch}_macos-#{arch}_bin.tar.gz"
  if Hardware::CPU.intel?
    sha256 "98010b952880202736f7620d6eff4ee31ad338d63131e8f2e273082bcb386f2d"
  else
    sha256 "2f031d4938ed4b4b1f343559dc38b2ee010a6003c603579d2e063f1486b469a1"
  end

  name "OpenJDK Development Kit Project Loom EA Release"
  desc "Development kit for the Java programming language"
  homepage "https://jdk.java.net/loom/"

  artifact "jdk-#{version_major}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-loom-#{version}.jdk"
end
