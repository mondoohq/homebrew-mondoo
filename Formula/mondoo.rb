class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.19.0"
  current_sha256="5c40eebe6d10fa5d2690b2ea8a136600f451e63b96c3958297fdaf7805af13dc"

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
