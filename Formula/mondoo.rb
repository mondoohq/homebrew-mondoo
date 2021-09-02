class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.17.2"
  if Hardware::CPU.intel?
    sha256 "21b5ca2bc94818d9d97ed5ed23e3e80211cd102c9a9b3318b7c7d5b77eebcb08" #amd64sha
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  else
    sha256 "43622843e72d32cd7bdf96bf07ad1e90be043c4d7730e6518e107520f8dc8b18" #arm64sha
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
