class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.5.0"
  current_sha256="193a4c8e062ec91e3978d7f689fce8ad9777fd00c5017857ce5758b164519c9e"

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
