
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.12.1"

  if Hardware::CPU.intel?
    sha256 "a22aa1b6c0e5252ed9d8ca7a82b851b77d15f122ee4294dbcb710de9dfe1321f"
    url "https://releases.mondoo.com/cnquery/7.12.1/cnquery_7.12.1_darwin_amd64.tar.gz"
  else
    sha256 "eb382cf5f66b57f73623fbf5ce9b3263ad8aa59ee36d841456b7acd989e13f0f"
    url "https://releases.mondoo.com/cnquery/7.12.1/cnquery_7.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

