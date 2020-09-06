class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.62.0"
  current_sha256="bd1218704451ece304a4523a557e2ad8ffa663137b2cb0cd100a4df6e58db74a"

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
