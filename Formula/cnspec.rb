
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.21.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a8ec4ad325df3fcbe890d4ddf2e5d5bb27a0b25541590c4d84a3b0c17e492fce"
    url "https://releases.mondoo.com/cnspec/8.21.3/cnspec_8.21.3_darwin_amd64.tar.gz"
  else
    sha256 "3daf9993a582aba0cf66309e753a8e1cb829aa1366e0f789bb6be1230128a0f9"
    url "https://releases.mondoo.com/cnspec/8.21.3/cnspec_8.21.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

