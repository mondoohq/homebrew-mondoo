
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.21.0"
  

  if Hardware::CPU.intel?
    sha256 "c2c32b393cd8a7aa4e4774430a277827863d7eefd7aac2c713be61ebff3c6e9c"
    url "https://releases.mondoo.com/cnquery/8.21.0/cnquery_8.21.0_darwin_amd64.tar.gz"
  else
    sha256 "87ffafa1983da7646eacc06d300a87858d62318d179f0533541764fa42e4dceb"
    url "https://releases.mondoo.com/cnquery/8.21.0/cnquery_8.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

