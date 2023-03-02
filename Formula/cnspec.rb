
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.19.2"

  if Hardware::CPU.intel?
    sha256 "476079d545af88a981ced84fc445072758fd693cb9416acb38c39f050a18d84e"
    url "https://releases.mondoo.com/cnspec/7.19.2/cnspec_7.19.2_darwin_amd64.tar.gz"
  else
    sha256 "7babd0f2acb600d856eb97d671204c3fad19158e778f7287f2fa894aaa288378"
    url "https://releases.mondoo.com/cnspec/7.19.2/cnspec_7.19.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

