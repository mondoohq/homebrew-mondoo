
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.24.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "ba3fb19955058db35722b3f424c00b1777c6caf4c502277751b9dc5bb244d1c0"
    url "https://releases.mondoo.com/cnspec/13.24.2/cnspec_13.24.2_darwin_amd64.tar.gz"
  else
    sha256 "ae0a144ccb0968cb1fbab7a7b1fd260dc1f8dd3fa16f9d309c512c2b4de55948"
    url "https://releases.mondoo.com/cnspec/13.24.2/cnspec_13.24.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

