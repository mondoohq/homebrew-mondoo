
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.18.0"

  if Hardware::CPU.intel?
    sha256 "5c12988244cb1a507eeafc49709dcbce91399f03185ed65f3c4080f9a4c200ab"
    url "https://releases.mondoo.io/mondoo/5.18.0/mondoo_5.18.0_darwin_amd64.tar.gz"
  else
    sha256 "a84575767aecb2a4f63871d96d3e60148f8a2e491d947e893719671fb51ba0af"
    url "https://releases.mondoo.io/mondoo/5.18.0/mondoo_5.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

