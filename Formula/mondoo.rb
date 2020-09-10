class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.63.1"
  current_sha256="80783956786de26c580a8203ca2571ee4d29591f53dd008145d1f150c026e45c"

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
