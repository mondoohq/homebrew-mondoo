class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.3.0"
  current_sha256="e032c8e46da2e82bbe5576a0b14f94925cba899c6509166aed8c971b65462e7b"

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
