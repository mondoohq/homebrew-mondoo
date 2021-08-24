class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.17.0"
  if Hardware::CPU.intel?
    sha256 "1e280d332ca8518e4ca00238a440e5a5ea9c016f9948bafb526a29630d3c8cdb"
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  else
    sha256 "51b9bb14fb72ef3cb01ce4ea4ef0751e4b1e8f487db8828e38ed44f603ff52a2"
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_arm64.tar.gz"
  end

  desc "Mondoo Labs"
  homepage "https://mondoo.io"
  version current_version

  def install
    bin.install "mondoo"
  end

  test do
    system bin/"mondoo", "version"
  end
end
