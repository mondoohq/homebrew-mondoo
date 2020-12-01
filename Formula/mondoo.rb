class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="2.1.0"
  current_sha256="078155eb7a5dd80e5915069bcc1fb36452d15c2abe7fa8db74fbb8539b9b5f14"

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
