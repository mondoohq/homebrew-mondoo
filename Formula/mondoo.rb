class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.61.0"
  current_sha256="d1a679100c2e5ab86d9d3e5226c5ee1426cdbc362073a14293aed13a893dc691"

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
