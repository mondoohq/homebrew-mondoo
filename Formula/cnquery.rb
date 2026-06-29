
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.25.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7ad33f95091cc9e4230385c719a92aea10dfcd735acb832a2e34512e80d4a0ab"
    url "https://releases.mondoo.com/cnspec/13.25.0/cnspec_13.25.0_darwin_amd64.tar.gz"
  else
    sha256 "79443bef7c5fe5d0847ba97cd0cbb24cf252179eab2becf56592648a4dad404e"
    url "https://releases.mondoo.com/cnspec/13.25.0/cnspec_13.25.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

