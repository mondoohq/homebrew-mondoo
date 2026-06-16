
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.23.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "58a6c8f28c4658c84090f65b4136c9a61891d9cbd30604f0051863f81906baeb"
    url "https://releases.mondoo.com/cnspec/13.23.0/cnspec_13.23.0_darwin_amd64.tar.gz"
  else
    sha256 "b009d31be157999287dce15eca4766ea6357ea0465f0e4966d962f74fd39e130"
    url "https://releases.mondoo.com/cnspec/13.23.0/cnspec_13.23.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

