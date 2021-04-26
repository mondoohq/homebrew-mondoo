class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.4.0"
  current_sha256="2308e5b406753f4b4a73ec3c38117d5b57a52e0f7bae745e474d94225b13f001"

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
