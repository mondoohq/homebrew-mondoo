
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.14.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b7100fe8f0563be810b681f6e75edb2326d9b317f2e35f344aa1014f9b6b87dd"
    url "https://releases.mondoo.com/cnspec/8.14.0/cnspec_8.14.0_darwin_amd64.tar.gz"
  else
    sha256 "f0d41958ec11dfe233c7309621240d3beb122266790cc7193bbfa3dea184d880"
    url "https://releases.mondoo.com/cnspec/8.14.0/cnspec_8.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

