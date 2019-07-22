class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="0.16.0"
  current_sha256="7223d2bf2f7b265713dce3b9327220c8f33bdbc8f19c9226a3c97e5a780ac70f"

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
