class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.51.0"
  current_sha256="ee6bce927be63a98df527fc6516f046b3d2ddd5c4015997c738559b4f4039cc9"

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
