class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.6.0"
  current_sha256="05d2668256db0d78bf365e4d515ae115b9555f850e3f9dc6be993eb655224e0e"

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
