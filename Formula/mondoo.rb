class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.21.0"
  current_sha256="365b9d62aa69ac41409afc083a284a6b65d1eca2547c6b26e606f9b2e9e6ff10"

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
