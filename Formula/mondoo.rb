class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.31.0"
  current_sha256="c7efb30f2d2b03d8d8e319ea0b163de2eb3747f036c0545c7c5d64affd8dcbc6"

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
