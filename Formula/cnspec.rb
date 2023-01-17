
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.13.0"

  if Hardware::CPU.intel?
    sha256 "c244c4217842077ccc7e808038bf8d58766206edf8caaeba6a7d4bfaba6d4633"
    url "https://releases.mondoo.com/cnspec/7.13.0/cnspec_7.13.0_darwin_amd64.tar.gz"
  else
    sha256 "9ec07285149c21479918c4ce3bf194b73797b33c0ee4d8a7a7f7263da26b3ab0"
    url "https://releases.mondoo.com/cnspec/7.13.0/cnspec_7.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

