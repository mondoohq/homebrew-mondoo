
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.14.0"

  if Hardware::CPU.intel?
    sha256 "563968253019aa990887349e2404e1c80fe5fcd3d8aa335ab573442bc9aeaad7"
    url "https://releases.mondoo.com/cnquery/7.14.0/cnquery_7.14.0_darwin_amd64.tar.gz"
  else
    sha256 "9beddb9e12f7dcd4b2b7deedf8b1b8dc3a57abeaf92301790aca5c89bdfc8839"
    url "https://releases.mondoo.com/cnquery/7.14.0/cnquery_7.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

