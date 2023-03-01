
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.19.0"

  if Hardware::CPU.intel?
    sha256 "3fb79ec5587d4293d38b4e4a7b78e84a8a4e70659120eb40f58fac63bd55634d"
    url "https://releases.mondoo.com/cnquery/7.19.0/cnquery_7.19.0_darwin_amd64.tar.gz"
  else
    sha256 "9c1a3d6590f8b04ffed07bb1415c39f6c797131dff46578291bf51b249aafe57"
    url "https://releases.mondoo.com/cnquery/7.19.0/cnquery_7.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

