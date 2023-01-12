
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.12.1"

  if Hardware::CPU.intel?
    sha256 "85a9961028000d0f600b3c1485beb22445b13c4291129a3be5dfa279c19f59e9"
    url "https://releases.mondoo.com/cnspec/7.12.1/cnspec_7.12.1_darwin_amd64.tar.gz"
  else
    sha256 "ea06af0e5bab9d486addb9eef1b1dfad2124425e9d7ba885787655cf03e5c8c0"
    url "https://releases.mondoo.com/cnspec/7.12.1/cnspec_7.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

