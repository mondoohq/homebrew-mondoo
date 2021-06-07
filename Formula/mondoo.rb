class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.9.0"
  current_sha256="8af212445d9f3c313eb8451fb9f1bc1eb140523bafe54d54249a623c42fbf037"

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
