
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.5.3"
  

  if Hardware::CPU.intel?
    sha256 "8d06697753ee9a4829cb6644f806c64396095e95f2656ca10f37a964242d75fb"
    url "https://releases.mondoo.com/cnquery/8.5.3/cnquery_8.5.3_darwin_amd64.tar.gz"
  else
    sha256 "4a8f235225a6744ddbdacb23bc433fd5b2d35f9efd7de1f3d6db79e3f7624727"
    url "https://releases.mondoo.com/cnquery/8.5.3/cnquery_8.5.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

