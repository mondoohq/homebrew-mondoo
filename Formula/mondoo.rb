class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.15.0"
  current_sha256="1f788fefd5617cde583bd4302723ac17061ad1070c5250dea76ac371ae8825dd"

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
