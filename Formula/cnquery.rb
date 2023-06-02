
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.12.1"
  

  if Hardware::CPU.intel?
    sha256 "f37590ee4122c594d32ca89806a63ab858a6a0723f34f1eae83224af3c8f6760"
    url "https://releases.mondoo.com/cnquery/8.12.1/cnquery_8.12.1_darwin_amd64.tar.gz"
  else
    sha256 "3d7ae0ae550b97d0442d6832ab7236340ad34246d1e4212c578258e9bf499ace"
    url "https://releases.mondoo.com/cnquery/8.12.1/cnquery_8.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

