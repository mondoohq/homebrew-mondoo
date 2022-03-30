
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.32.0"

  if Hardware::CPU.intel?
    sha256 "a377e3445d2a424880218f4cae710b5c0850598f3c52de744d7f1a189336276b"
    url "https://releases.mondoo.com/mondoo/5.32.0/mondoo_5.32.0_darwin_amd64.tar.gz"
  else
    sha256 "fe0f207c641ba53ea27d76a923d19a80d35bdd8a3c099f1289a83013fd4c220f"
    url "https://releases.mondoo.com/mondoo/5.32.0/mondoo_5.32.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

