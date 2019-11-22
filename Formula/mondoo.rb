class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.33.1"
  current_sha256="8c51adfd936ef223476ed6c0c87e296d6b0dc9ad2cc03b298a33ee91ae5acc6d"

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
