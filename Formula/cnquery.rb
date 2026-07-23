
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.30.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "624fe46e11fa892c6721403ec1e538a0728990a069115c2116d09939bcb97fed"
    url "https://releases.mondoo.com/cnspec/13.30.1/cnspec_13.30.1_darwin_amd64.tar.gz"
  else
    sha256 "3e2135cba38c8bbf474efae9a3a3d6d63ca6fe22ca0caf46bd87016bcddc522d"
    url "https://releases.mondoo.com/cnspec/13.30.1/cnspec_13.30.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

