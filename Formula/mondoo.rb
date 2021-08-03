class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.13.0"
  current_sha256="3f840178e257b143663dd10a3a6c59872d9599c873ea7d3dd06cc7b513b6dc17"

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
