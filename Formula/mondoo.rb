class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.3.1"
  current_sha256="ef5332e5cebecd7f3843c091d2c1529717ddb56bdd10c6dfe6c8a852cfddf684"

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
