class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.50.0"
  current_sha256="ef2fdefb034f7b68ded2356b8daa6411992ff72e553a02f08a99b6998451bcba"

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
