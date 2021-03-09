class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.6.1"
  current_sha256="aa6482d4d22f1d905d2a7c185ec674c9c3f1e46195c8a3e0c895361d2b4ece4e"

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
