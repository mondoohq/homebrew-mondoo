
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.14.2"

  if Hardware::CPU.intel?
    sha256 "6b8d1a833a41948c859f8492d196fc57d9442339fc16284c7b71ee1d277b10c4"
    url "https://releases.mondoo.com/cnquery/7.14.2/cnquery_7.14.2_darwin_amd64.tar.gz"
  else
    sha256 "1c5772e111f8650a34c0a0509ee6a0735fe68339bc8f33f131817e217b6d047f"
    url "https://releases.mondoo.com/cnquery/7.14.2/cnquery_7.14.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

