class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.2.1"
  current_sha256="3b8d74f9a0d488a3ed052fe83e8e8befd6eeeac963309c8527e5c6ed7038eff4"

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
