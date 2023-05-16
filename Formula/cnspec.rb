
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.10.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bdd65d25c4c14d61bbf2c55a937e3a33320626ef42950e35d69e369ab4b0330a"
    url "https://releases.mondoo.com/cnspec/8.10.0/cnspec_8.10.0_darwin_amd64.tar.gz"
  else
    sha256 "ba42b97d76bdec16b0704e09710b000d0ef5ce9a379801c358973e622e2e5eab"
    url "https://releases.mondoo.com/cnspec/8.10.0/cnspec_8.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

