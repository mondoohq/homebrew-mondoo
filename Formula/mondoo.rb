class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.0.2"
  current_sha256="3a852bbd607fe9834831ff8ad1369b9de4e54b654e86e6a1f06c07d40fbc8789"

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
