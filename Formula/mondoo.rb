class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.7.0"
  current_sha256="09a986f1ce1cbb66dcd87b8f7e164b5825c244358e641eacd6d9250c998b6f52"

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
