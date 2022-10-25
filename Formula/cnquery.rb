
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.1.1"

  if Hardware::CPU.intel?
    sha256 "b4dd58ef62ddd0dcb20ef54e5ecb446297464b4761af023387646892098b5862"
    url "https://releases.mondoo.com/cnquery/7.1.1/cnquery_7.1.1_darwin_amd64.tar.gz"
  else
    sha256 "bc8b7deded520b65e69281a90cfec9a3920f81063daf10646727e13d3cf66948"
    url "https://releases.mondoo.com/cnquery/7.1.1/cnquery_7.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

