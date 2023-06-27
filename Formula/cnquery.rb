
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.16.0"
  

  if Hardware::CPU.intel?
    sha256 "642420ac9ab4ee8b77b1d94366e1804c8b9ffcc00615aee52784eaacc25e6f8e"
    url "https://releases.mondoo.com/cnquery/8.16.0/cnquery_8.16.0_darwin_amd64.tar.gz"
  else
    sha256 "be52879387767afda1285a435f22f2520d6a3598910728c8ecbbcc247cde0553"
    url "https://releases.mondoo.com/cnquery/8.16.0/cnquery_8.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

