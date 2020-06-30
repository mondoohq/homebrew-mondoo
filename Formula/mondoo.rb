class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.52.0"
  current_sha256="ada8520c0518f985ae921a7e330d220d099096d21cec42766fcf74614749cc43"

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
