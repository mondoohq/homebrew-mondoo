class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.4.1"
  current_sha256="2600cbe5fd5f43246324a034d1d9afc0f5d1ef161fe4b334279def41067800dd"

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
