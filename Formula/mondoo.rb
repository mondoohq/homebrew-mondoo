class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.10.0"
  current_sha256="18ed334a35a36eabf5e972f60592afb37a37a077732d51bc580cfaa3525453c1"

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
