class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.11.3"
  current_sha256="b1c40264d8f5136c9fc8f60b790992eab616bc02c33ca20a5b6b6f88b96deefb"

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
