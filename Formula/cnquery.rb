
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.4.1"
  

  if Hardware::CPU.intel?
    sha256 "7fd3fccef8257e586989436c645dfa751aaa26b70196f32cf7e1d412e65a5dbd"
    url "https://releases.mondoo.com/cnquery/8.4.1/cnquery_8.4.1_darwin_amd64.tar.gz"
  else
    sha256 "856237d97ec5b542302ee35388fd0e6c9888a853c209591e90a5fe94d608756d"
    url "https://releases.mondoo.com/cnquery/8.4.1/cnquery_8.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

