class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.61.1"
  current_sha256="ce6ff51212717c86c88865d03af6cd025d9209f3ad0c268c5d31bf3e3088e72c"

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
