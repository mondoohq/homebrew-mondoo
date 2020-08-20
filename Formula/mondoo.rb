class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.59.0"
  current_sha256="201be37b0081ccc164707b99d234bf261ec541e0af104d21b78ca92b8087ecf5"

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
