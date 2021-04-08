class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.2.0"
  current_sha256="0a3070cfca8ac82f2ff1be15c0871d8bdd7c26237f6e285b2faf3f5b8cb033f5"

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
