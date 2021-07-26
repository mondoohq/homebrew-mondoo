class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.12.0"
  current_sha256="e7656ed9fb8996b202beabc8bccafabe34a75a2d2fc44bb134a21e68b4a17d56"

  desc "Mondoo Labs"
  homepage "https://mondoo.io"
  url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  version current_version
  sha256 current_sha256.downcase

  def install
    bin.install "mondoo"
  end

  test do
    system bin/"mondoo", "version"
  end
end
