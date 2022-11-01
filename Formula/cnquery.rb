
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.2.0"

  if Hardware::CPU.intel?
    sha256 "21e08c7471be2cfd17f09016572839021f58655e6cba6900e2dcf0f02b00fb8f"
    url "https://releases.mondoo.com/cnquery/7.2.0/cnquery_7.2.0_darwin_amd64.tar.gz"
  else
    sha256 "bd01ccff7472371949851a6065d656269737d5ccac405e314c47550f5588032d"
    url "https://releases.mondoo.com/cnquery/7.2.0/cnquery_7.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

