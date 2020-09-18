class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.65.0"
  current_sha256="aba4acf751075cae05245f0348fb0d55a4b9a36ecfd590289a5a997621639bb2"

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
