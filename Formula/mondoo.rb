class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.64.2"
  current_sha256="f1b25edff2a40e4addd13982a1618f25bbd7d5fb1386485b744c6d0cc6edefaf"

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
