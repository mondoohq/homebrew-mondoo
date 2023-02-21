
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.18.0"

  if Hardware::CPU.intel?
    sha256 "4a44a867d3349dadfb40c729ef2ebfb84149118b30ecf808a04caa628248c1f1"
    url "https://releases.mondoo.com/cnspec/7.18.0/cnspec_7.18.0_darwin_amd64.tar.gz"
  else
    sha256 "cc4d67dd97d412ebcc2f11bfd6b7f6e9aa4569308cb4cf6fd184a9b930abe841"
    url "https://releases.mondoo.com/cnspec/7.18.0/cnspec_7.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

