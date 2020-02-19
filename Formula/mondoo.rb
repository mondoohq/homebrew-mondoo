class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.41.0"
  current_sha256="3f450ebb27b2cd374c7def71b21d2f760d68f6f8f49ad2ad4341be2911a35e76"

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
