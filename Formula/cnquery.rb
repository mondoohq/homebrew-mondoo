
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.11.0"

  if Hardware::CPU.intel?
    sha256 "6a0f514082db38055106868a320410218ea6f5435a3d5ffa3f00492af2cc3af6"
    url "https://releases.mondoo.com/cnquery/7.11.0/cnquery_7.11.0_darwin_amd64.tar.gz"
  else
    sha256 "a16f139b6448a609a93e6e3929e629e7a4180321f3c88e8e3f61735b0f07c6f3"
    url "https://releases.mondoo.com/cnquery/7.11.0/cnquery_7.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

