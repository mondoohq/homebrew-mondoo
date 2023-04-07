
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.4.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fb80f28a220ecd2c221c28d6415e39f12b622d92d0031170f4c1f175318c7e82"
    url "https://releases.mondoo.com/cnspec/8.4.2/cnspec_8.4.2_darwin_amd64.tar.gz"
  else
    sha256 "5f3d95ff15cab47339d31adbdf048450bd15fc7d368af32761aafd9054fa9546"
    url "https://releases.mondoo.com/cnspec/8.4.2/cnspec_8.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

