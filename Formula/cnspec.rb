
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.22.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5211d3857aaf5b09b27b8c0908e266fc36bfc74a46c688e7cb335eb098f24bcc"
    url "https://releases.mondoo.com/cnspec/8.22.0/cnspec_8.22.0_darwin_amd64.tar.gz"
  else
    sha256 "b034e1584abaafc1462e47a7023425824275596fb972876a8d2ab151071c9f61"
    url "https://releases.mondoo.com/cnspec/8.22.0/cnspec_8.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

