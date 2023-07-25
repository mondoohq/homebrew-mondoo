
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.20.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c203f101efd761b492ad118a75349065cf8b48d0a4046c523819dc7822514853"
    url "https://releases.mondoo.com/cnspec/8.20.0/cnspec_8.20.0_darwin_amd64.tar.gz"
  else
    sha256 "39862bbd42eba6d88c9a1f601fa6e15b32578bc0f637635b40fbac2c591ab723"
    url "https://releases.mondoo.com/cnspec/8.20.0/cnspec_8.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

