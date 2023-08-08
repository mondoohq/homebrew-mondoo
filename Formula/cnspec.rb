
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.22.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4335c7fa9c91ef4ea8f072e696f4f12f52d37048876ba16923554ae38cb6900c"
    url "https://releases.mondoo.com/cnspec/8.22.1/cnspec_8.22.1_darwin_amd64.tar.gz"
  else
    sha256 "8f513fac7c6ce4faaa96bea479548ce436db619da260d54d00edf580aed7127a"
    url "https://releases.mondoo.com/cnspec/8.22.1/cnspec_8.22.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

