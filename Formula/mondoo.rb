class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.24.1"
  current_sha256="860b7318c56f8ab450df4818281bad30ee2b24151c25622880db9d4810d67e04"

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
