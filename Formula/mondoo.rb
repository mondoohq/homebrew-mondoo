class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="2.0.1"
  current_sha256="6e2fd8f0b547f083e9f1746017904a0e82f094ce8175acaf7572197137ae3703"

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
