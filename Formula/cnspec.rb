
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.3.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "452d8858cc15cdbec2253e15621f70a47712ca07a91cd883ed92c79d3e6302c1"
    url "https://releases.mondoo.com/cnspec/8.3.1/cnspec_8.3.1_darwin_amd64.tar.gz"
  else
    sha256 "aa84e6aaa2e8bacaf370f368b937ef0e234d2f27dee6fc11f0185061c7b5c355"
    url "https://releases.mondoo.com/cnspec/8.3.1/cnspec_8.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

