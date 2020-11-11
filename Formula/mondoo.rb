class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.5.0"
  current_sha256="68880b87bc34749058f20d2c405973c3e96c7b2b302d97afc0fe255d12b87df2"

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
