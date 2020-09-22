class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.66.0"
  current_sha256="526e7b26d7f69c82eb248c8e2ea086a4fc8fb50e52b59836664592f17f00d7d9"

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
