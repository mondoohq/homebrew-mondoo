
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.24.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f229cdbd45e2ec2b2f6643ac3c04dc3fb34e3189d5a5975da1855493d5813993"
    url "https://releases.mondoo.com/cnspec/8.24.0/cnspec_8.24.0_darwin_amd64.tar.gz"
  else
    sha256 "249f1ab28a65c28d7406e765f87d0f1875b149a01534b79033eb11d66f105b3c"
    url "https://releases.mondoo.com/cnspec/8.24.0/cnspec_8.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

