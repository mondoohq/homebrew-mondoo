
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.4.0"

  if Hardware::CPU.intel?
    sha256 "5f26a40908fc634d687ead2a92306f64b2da489e93d316ae1cdba30fef1a672e"
    url "https://releases.mondoo.com/cnquery/7.4.0/cnquery_7.4.0_darwin_amd64.tar.gz"
  else
    sha256 "f9779b525caa3bbb62dd64071b0f7d859fdc50a71581d438fdb80a19ea0065a5"
    url "https://releases.mondoo.com/cnquery/7.4.0/cnquery_7.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

