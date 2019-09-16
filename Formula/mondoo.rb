class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.25.0"
  current_sha256="2baf8dc6778476d827f133a80cdfcf37e492148b1e1a9e1eeb7095a1549b9ce8"

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
