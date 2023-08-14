
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.23.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "275f9195649a84b0cdd82f3e9ed4d015aa7564f9fa9f1973b812603bdcb5e230"
    url "https://releases.mondoo.com/cnspec/8.23.0/cnspec_8.23.0_darwin_amd64.tar.gz"
  else
    sha256 "2190bcb029215419f89e5957dc175e7604073831c001beb5325431ff542c8644"
    url "https://releases.mondoo.com/cnspec/8.23.0/cnspec_8.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

