class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.16.0"
  current_sha256="47f1176135f9970731b3d7cfc8cd0925539eceb4e4fe4fc7326e8630bb242367"

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
