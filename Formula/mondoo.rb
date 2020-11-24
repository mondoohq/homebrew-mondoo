class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="2.0.0"
  current_sha256="9df62434b6c27fb26cad862782672e47cc31367b2097dc3882831662e85bdff3"

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
