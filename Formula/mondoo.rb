class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.60.0"
  current_sha256="69bca2840695776a667cb992fb25d4baa054a4acab4e255ff922fe46aaa31509"

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
