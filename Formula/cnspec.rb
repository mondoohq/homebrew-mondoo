
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.5.0"

  if Hardware::CPU.intel?
    sha256 "97ff7b82027a0370f04704d1d6246b448eb360cdc9fc357e566730db0748ced6"
    url "https://releases.mondoo.com/cnspec/7.5.0/cnspec_7.5.0_darwin_amd64.tar.gz"
  else
    sha256 "b07fa6eae6184dc4d11e9fccf9883222e4fba09e4d6c84b2acaaa2b9e45368c2"
    url "https://releases.mondoo.com/cnspec/7.5.0/cnspec_7.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

