
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.8.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "be0bf07a5712bd9b893c4ae03636ae8dfbb55c845a0ad48939a663a445a4950d"
    url "https://releases.mondoo.com/cnspec/13.8.2/cnspec_13.8.2_darwin_amd64.tar.gz"
  else
    sha256 "07676a7acbb6086e2c6b462a43a7cd7f600c7ad9b76441032c59640a4d3eee7a"
    url "https://releases.mondoo.com/cnspec/13.8.2/cnspec_13.8.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

