
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.15.0"
  

  if Hardware::CPU.intel?
    sha256 "25a495a323f20fd2dd0ab02290e7ff1cbc5207bd73b60cf44279427eca6c6094"
    url "https://releases.mondoo.com/cnquery/8.15.0/cnquery_8.15.0_darwin_amd64.tar.gz"
  else
    sha256 "450a2949bb9f45a789fc0464e057d2d40e7874a11f5ad211ef4e1ed2d905829c"
    url "https://releases.mondoo.com/cnquery/8.15.0/cnquery_8.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

