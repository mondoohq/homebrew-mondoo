
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "6.18.0-alpha2"

  if Hardware::CPU.intel?
    sha256 "e961356daeaf3a8075a5e56cbe23599f46abed27311005ed695c9cdf709b5374"
    url "https://releases.mondoo.com/cnspec/6.18.0-alpha2/cnspec_6.18.0-alpha2_darwin_amd64.tar.gz"
  else
    sha256 "ad9db1c31ab80d9e0973a1481e0e8f243322aac32a0a938162321edce62d359e"
    url "https://releases.mondoo.com/cnspec/6.18.0-alpha2/cnspec_6.18.0-alpha2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

