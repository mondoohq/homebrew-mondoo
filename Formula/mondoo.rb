class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.0.0"
  current_sha256="6e0e2314eb1f557bff5d93ebcee0e1b4a207035f8481e5a41bbdcfb2e31fb6ed"

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
