class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.2.0"
  current_sha256="58f4af2161bc539f6015fd059b6a17db6f4d012796f7a7dc2adde5631904fc38"

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
