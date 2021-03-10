class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.6.2"
  current_sha256="7b73750aae13a5ff881a7b80d1b23633372afe7155fac64290962c64ec1cb2b2"

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
