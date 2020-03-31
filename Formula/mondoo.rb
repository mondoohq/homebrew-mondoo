class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.44.1"
  current_sha256="89fd3dad34986e4f9b98b97b6863723510a674186a622ac30cdf773506ffe95d"

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
