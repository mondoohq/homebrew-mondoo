class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.7.2"
  current_sha256="99ef8767c08a07d46d58bd78f60144b62800df3da32fc9f9e3be8737efc05cd2"

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
