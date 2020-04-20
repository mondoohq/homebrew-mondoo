class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.45.0"
  current_sha256="4a9eb960445235f63447a6bd660e78563a432af3e50dd3f47f60b2f992277de5"

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
