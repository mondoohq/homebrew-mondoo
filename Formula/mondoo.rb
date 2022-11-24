
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.5.1"

  if Hardware::CPU.intel?
    sha256 "352f67ca19975c1c1dcc1b5fcf6d78c32e40aee55585d5e836346a36379d48b0"
    url "https://releases.mondoo.com/mondoo/7.5.1/mondoo_7.5.1_darwin_amd64.tar.gz"
  else
    sha256 "360eb4342fb38539e74be9be4860a560eb1db605ffbcc50103b811818b477728"
    url "https://releases.mondoo.com/mondoo/7.5.1/mondoo_7.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

