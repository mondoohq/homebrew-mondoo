
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.3.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bc700853ac83854491f41ad25b49a0b661f96a1d0a123476680c059be737bbad"
    url "https://releases.mondoo.com/cnspec/8.3.0/cnspec_8.3.0_darwin_amd64.tar.gz"
  else
    sha256 "73e07ac793a9d013462f9c2039834cb7be9a151112dce78985f5a8fa563c2296"
    url "https://releases.mondoo.com/cnspec/8.3.0/cnspec_8.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

