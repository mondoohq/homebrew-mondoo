class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.55.0"
  current_sha256="8506bf747f5201cf955faeb5f97cb77bb7eb4ffa1aca58b262cd7a04ef189261"

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
