class Bomly < Formula
  desc "Free, open-source CLI for dependency intelligence and SBOM analysis"
  homepage "https://bomly.dev/cli"
  version "0.15.0"

  on_macos do
    on_intel do
      url "https://github.com/bomly-dev/bomly-cli/releases/download/v#{version}/bomly_#{version}_darwin_amd64.tar.gz"
      sha256 "a93be8aa51cecfb619d154e5be8fd135def4487a090fb4701f0ee41d3c4a4631"
    end
    on_arm do
      url "https://github.com/bomly-dev/bomly-cli/releases/download/v#{version}/bomly_#{version}_darwin_arm64.tar.gz"
      sha256 "8dff4db42109f9f2cb2cf1967136fde44c0c0515a3e964d1cb67d173a30fc4c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bomly-dev/bomly-cli/releases/download/v#{version}/bomly_#{version}_linux_amd64.tar.gz"
      sha256 "608141f00ebd984f65cab1374d453fcc78c7f8ff8e9f6a8f55309157ff3e52c6"
    end
    on_arm do
      url "https://github.com/bomly-dev/bomly-cli/releases/download/v#{version}/bomly_#{version}_linux_arm64.tar.gz"
      sha256 "e88f8eb2bc4fa341bbb081db1db4aca3a059496b5d216f41a27938889a2c73d4"
    end
  end

  def install
    bin.install "bomly"
  end

  test do
    system "#{bin}/bomly", "--version"
  end
end
