class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.4.0"
  current_sha256="4e9e1d86b9880509009b83754b5d26e9728353125356ee1002b92ea338a648f6"

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
