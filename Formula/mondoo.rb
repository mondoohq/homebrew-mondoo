class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.4.0"
  current_sha256="26b9dc242290fb4701c99d86f769c71fdc19bf03a8bebdd888ebcb52e0268ae8"

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
