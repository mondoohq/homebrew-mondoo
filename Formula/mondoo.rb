class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.57.0"
  current_sha256="837dc03b9e28d5842f76fc96360b673761f8bfdb223eb00f0c9c1228d92c38e9"

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
