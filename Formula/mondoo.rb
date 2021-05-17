class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.7.0"
  current_sha256="ed493861f21a0466de416fa783f5df75906b885c3d258cb2c92bbe3f27e5a7cc"

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
