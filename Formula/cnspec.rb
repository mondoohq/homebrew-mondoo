
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.17.1"

  if Hardware::CPU.intel?
    sha256 "e9d7ef7ca66f6b1e15de035b98dba8716db723e62bd8165eaee0ea09c2c78d05"
    url "https://releases.mondoo.com/cnspec/7.17.1/cnspec_7.17.1_darwin_amd64.tar.gz"
  else
    sha256 "ae5b880b9199786c4d27afc815909debb7d248d1575ca45f6a52d0ef00401d69"
    url "https://releases.mondoo.com/cnspec/7.17.1/cnspec_7.17.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

