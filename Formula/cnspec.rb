
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.12.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b39c53b6ecaa59b56d22a3e044fe1c2a31e9f945d16132d03fb0a0993bf0ef48"
    url "https://releases.mondoo.com/cnspec/8.12.1/cnspec_8.12.1_darwin_amd64.tar.gz"
  else
    sha256 "619514cc873d8188bf14e705d51bf3d491ce1b79be9846530e37214c0b6ac98a"
    url "https://releases.mondoo.com/cnspec/8.12.1/cnspec_8.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

