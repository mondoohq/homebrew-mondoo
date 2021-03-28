class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.0.0"
  current_sha256="3d959fe2d2839fe5c96706f263ef7c7d73f727c71da28c323c2021c2caa5cd28"

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
