class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.44.0"
  current_sha256="190926ed5a38d0d284f6cf33738ef955f73dc8e87cb58ed0412d4e1b3eeb2d24"

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
