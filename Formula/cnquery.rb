
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.24.0"
  

  if Hardware::CPU.intel?
    sha256 "8aff7a66aa2a94999b83bfef26c8dc2e15c2bc310a4ee9a35d9a90ff9b96514e"
    url "https://releases.mondoo.com/cnquery/8.24.0/cnquery_8.24.0_darwin_amd64.tar.gz"
  else
    sha256 "387472b555b734aba3e2431e4e0ab8c3ad343dd89fbd84d7ec20789da2767ae0"
    url "https://releases.mondoo.com/cnquery/8.24.0/cnquery_8.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

