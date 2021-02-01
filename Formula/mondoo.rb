class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.2.0"
  current_sha256="db39c3c64f60efd183679c1d25c86b31d52a1859a5e80f9375706b4aa7377580"

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
