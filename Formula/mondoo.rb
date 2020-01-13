class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.40.0"
  current_sha256="b877620a31bed8930da4c117483af2f59f695b702bc66043b4ebda4f11cc1216"

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
