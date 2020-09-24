class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.67.0"
  current_sha256="493bb4b1cf0a7bbd821868c20c14e1f51f83522e53aebf97b991b5f9a19fb8f8"

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
