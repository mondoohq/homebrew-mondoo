class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.15.1"
  current_sha256="51b6cc102ade2d2b474068c27404173b0e6d8437dfdb253d8dcc0daa79e87985"

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
