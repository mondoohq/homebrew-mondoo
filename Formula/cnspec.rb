
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.5.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b71159ae9cadea0d17ea383ad24bf3955a52eb12fcf733df3c7eb1e98f5d7cea"
    url "https://releases.mondoo.com/cnspec/8.5.3/cnspec_8.5.3_darwin_amd64.tar.gz"
  else
    sha256 "6f564ce51e0467cb267e786b05ae29247f0076f2ebd9aa6e13bc30c4a318325b"
    url "https://releases.mondoo.com/cnspec/8.5.3/cnspec_8.5.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

