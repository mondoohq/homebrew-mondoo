class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.8.2"
  current_sha256="7581b66abc7a64b70fd4f405d71c4347618fcc821ebef69e593b5bf6ded2b45e"

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
