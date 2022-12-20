
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.9.0"

  if Hardware::CPU.intel?
    sha256 "d033bee2c234fbaac528fd61bc10cadf820084e018ae75044baef0beb8ca5336"
    url "https://releases.mondoo.com/cnspec/7.9.0/cnspec_7.9.0_darwin_amd64.tar.gz"
  else
    sha256 "4af69286d54c289242bc0be49e48a2f957a52a9efa60db6a2201302fa04ac72a"
    url "https://releases.mondoo.com/cnspec/7.9.0/cnspec_7.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

