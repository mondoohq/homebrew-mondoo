class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.54.0"
  current_sha256="b8e92fb2fbc8a24e87487048c36a251f8982cb3763e4f10723eb37a0d7ce6cdc"

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
