class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.28.0"
  current_sha256="7ca190289af681cda939b73ffd9260b4ad3f5fa2b4e1cbc900ef765f1cb18aa1"

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
