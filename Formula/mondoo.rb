class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.18.0"
  current_sha256="bcd45379f0831b2a399569ee36111b5f050060d80789804a634e2967fb987d6e"

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
