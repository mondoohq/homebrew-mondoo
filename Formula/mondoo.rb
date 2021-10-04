
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.7.0"

  if Hardware::CPU.intel?
    sha256 "72599038f5a1531fced16f504dec9bdd1c81d0d78a49324df5602374707a1a71"
    url "https://releases.mondoo.io/mondoo/5.7.0/mondoo_5.7.0_darwin_amd64.tar.gz"
  else
    sha256 "68819740536392dac40cd55d4cf4857750d0676eb9f5f7533fc23485f9525955"
    url "https://releases.mondoo.io/mondoo/5.7.0/mondoo_5.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

