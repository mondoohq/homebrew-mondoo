class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.63.0"
  current_sha256="ef2ea82d861b6320a476be06d593c4bb2dadfcc81ae770072cffe06cf36eb83e"

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
