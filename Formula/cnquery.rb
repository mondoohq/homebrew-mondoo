
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.2.1"

  if Hardware::CPU.intel?
    sha256 "f1b600dc30987554b222384de7940a78ef41a3ff147762705d804bc9e041ec35"
    url "https://releases.mondoo.com/cnquery/7.2.1/cnquery_7.2.1_darwin_amd64.tar.gz"
  else
    sha256 "814f23dd360c6015841a44e4f8af1171fcc93442bb855ffebfabae8f3bd18871"
    url "https://releases.mondoo.com/cnquery/7.2.1/cnquery_7.2.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

