
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.17.2"

  if Hardware::CPU.intel?
    sha256 "6ded07595b2fa02ef0a56b2a0563f1c79f4ed6dbeb203b9aaac922d5382a10b4"
    url "https://releases.mondoo.com/mondoo/7.17.2/mondoo_7.17.2_darwin_amd64.tar.gz"
  else
    sha256 "52a8152477cda719fc8d30b2ad63a08163a5a72a170512ef3a6cc56457690c24"
    url "https://releases.mondoo.com/mondoo/7.17.2/mondoo_7.17.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

