class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="5.0.0"
  if Hardware::CPU.intel?
    sha256 "376d0ef4830ecc24826c23c000689d76a657f1780972c9a56a84c3db9a27a469" #amd64sha
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  else
    sha256 "ad250c6552a49116159c0b3cc3516bffdcab76e1200ae4255920131b218eb4a0" #arm64sha
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_arm64.tar.gz"
  end

  desc "Mondoo Labs"
  homepage "https://mondoo.io"
  version current_version

  def install
    bin.install "mondoo"
  end

  test do
    system bin/"mondoo", "version"
  end
end
