class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.64.1"
  current_sha256="2b14e6e95a9affd284c0e5193edb1b1b89f872f0d320216dad337fd428ad3699"

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
