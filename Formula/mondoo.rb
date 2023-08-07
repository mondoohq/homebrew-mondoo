
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.22.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "e365e7f8fdfcf25f75181ae0e6282854ed28cc6d9967f719d2d2395bd04737e4"
    url "https://releases.mondoo.com/mondoo/8.22.0/mondoo_8.22.0_darwin_amd64.tar.gz"
  else
    sha256 "e365e7f8fdfcf25f75181ae0e6282854ed28cc6d9967f719d2d2395bd04737e4"
    url "https://releases.mondoo.com/mondoo/8.22.0/mondoo_8.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

