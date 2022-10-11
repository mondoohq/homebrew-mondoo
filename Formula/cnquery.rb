
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "6.19.0"

  if Hardware::CPU.intel?
    sha256 "05b5779e35df981387292047c779854c8c001f10be3bcea22252cbbde21b6cd5"
    url "https://releases.mondoo.com/cnquery/6.19.0/cnquery_6.19.0_darwin_amd64.tar.gz"
  else
    sha256 "9dd9b576df5fe3d48041f616b4be8d3d7a966cfb70e95b70622970e722236635"
    url "https://releases.mondoo.com/cnquery/6.19.0/cnquery_6.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

