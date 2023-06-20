
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.15.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "16f551b357a2c3dbe28aa75e7c66f0dd0ec751e6b71b814b98b932b02cad9631"
    url "https://releases.mondoo.com/mondoo/8.15.0/mondoo_8.15.0_darwin_amd64.tar.gz"
  else
    sha256 "16f551b357a2c3dbe28aa75e7c66f0dd0ec751e6b71b814b98b932b02cad9631"
    url "https://releases.mondoo.com/mondoo/8.15.0/mondoo_8.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

