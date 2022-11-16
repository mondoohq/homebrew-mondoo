
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.4.0"

  if Hardware::CPU.intel?
    sha256 "8f11733d184e1d4aac3fe0fb3376f055d92c2764d43beaff55bbfe42d82e7d63"
    url "https://releases.mondoo.com/mondoo/7.4.0/mondoo_7.4.0_darwin_amd64.tar.gz"
  else
    sha256 "b37d55a00d59c98af42f1a3e8cc9a2158bf567391774e2a8455ccb288e237e83"
    url "https://releases.mondoo.com/mondoo/7.4.0/mondoo_7.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

