
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.19.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "57f570592fcd2301a762c830558996ddaa897628e0643506b01f0cf1bac59764"
    url "https://releases.mondoo.com/cnspec/8.19.0/cnspec_8.19.0_darwin_amd64.tar.gz"
  else
    sha256 "ca75bae96738d0bb8520b32ac271a0a903d856a4927614c7b68e451ac54dd6aa"
    url "https://releases.mondoo.com/cnspec/8.19.0/cnspec_8.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

