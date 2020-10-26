class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.3.0"
  current_sha256="a49c9f34bfd34a191638a2a2a4da8d57d9c333560bce5d4b5f9d40b8a9800aa1"

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
