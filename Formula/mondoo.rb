
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.28.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "bb978a6b02fe9ec6503314a983cedc0ba8d8264f4dabfb0bca41ec7cff91429a"
    url "https://releases.mondoo.com/mondoo/8.28.1/mondoo_8.28.1_darwin_amd64.tar.gz"
  else
    sha256 "bb978a6b02fe9ec6503314a983cedc0ba8d8264f4dabfb0bca41ec7cff91429a"
    url "https://releases.mondoo.com/mondoo/8.28.1/mondoo_8.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

