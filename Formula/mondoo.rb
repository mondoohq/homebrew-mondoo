class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.58.0"
  current_sha256="7316a308478cb3988cbab7d635ab9549809dbdbdf95a96aaf260df4c143a11c3"

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
