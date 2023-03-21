
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.2.0"
  depends_on "cnquery"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "41d6ee5da0738e2f25c8993456e92900d936490287a4224b0929c592bb8c153f"
    url "https://releases.mondoo.com/cnspec/8.2.0/cnspec_8.2.0_darwin_amd64.tar.gz"
  else
    sha256 "8b4412d4948bd6d7cecf83c5fe900bd21a74b33bbd344777e30764517eb0348c"
    url "https://releases.mondoo.com/cnspec/8.2.0/cnspec_8.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

