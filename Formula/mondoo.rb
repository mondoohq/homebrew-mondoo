class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.8.3"
  current_sha256="f0a6afa468224eaccdfec2aa1cd0f449546ee2b279295fe52862b669f8b581db"

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
