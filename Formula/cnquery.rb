
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.10.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "9f2ac20635d628eab00d510c9f5032b4a2fc4f2dc57ed4a615fb0c0273d81571"
    url "https://releases.mondoo.com/cnspec/13.10.0/cnspec_13.10.0_darwin_amd64.tar.gz"
  else
    sha256 "8cfe8e8dcad6cb5e39db49df94c48399dd67e37dd9fd52b5b222a4a75bfaaf27"
    url "https://releases.mondoo.com/cnspec/13.10.0/cnspec_13.10.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

