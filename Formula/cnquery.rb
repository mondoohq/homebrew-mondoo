
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.15.0"

  if Hardware::CPU.intel?
    sha256 "1118afedf75dd6cd6bcceef7bbaccda7ba84171177f8d2d60fc5d98e6e9213e9"
    url "https://releases.mondoo.com/cnquery/7.15.0/cnquery_7.15.0_darwin_amd64.tar.gz"
  else
    sha256 "8666b0790f2170f86a3bd2b345391c3d4a7933763dd140fdf38f207066b32769"
    url "https://releases.mondoo.com/cnquery/7.15.0/cnquery_7.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

