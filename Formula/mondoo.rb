class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.64.0"
  current_sha256="852777f423678eba9071ee9cd37af6b4ce819667ad7dabb425ef64f282f2191f"

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
