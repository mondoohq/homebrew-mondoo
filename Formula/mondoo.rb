class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="1.1.0"
  current_sha256="6fe9958887a410e8459adf29fa0cf3defd452299a5cf9555815363402719c41d"

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
