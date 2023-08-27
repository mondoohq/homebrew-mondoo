
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.24.3"
  

  if Hardware::CPU.intel?
    sha256 "01b431f64333fd4ed11c776b28b81d0690a7bb2cb9281b674c81edca9106fb8c"
    url "https://releases.mondoo.com/cnquery/8.24.3/cnquery_8.24.3_darwin_amd64.tar.gz"
  else
    sha256 "4eaf6b0166c9833e042594507d0daef7c95447e68393cc30998938ffcb288f10"
    url "https://releases.mondoo.com/cnquery/8.24.3/cnquery_8.24.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

