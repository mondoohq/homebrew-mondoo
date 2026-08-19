
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.35.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "cb01a7f651f4f6791feff9658615182d986a6f87fd7e397fbc7a434fb713dccd"
    url "https://releases.mondoo.com/cnspec/13.35.1/cnspec_13.35.1_darwin_amd64.tar.gz"
  else
    sha256 "a7724936d78c151b7c22df48eaa55cd2c128746215fbc5ddc5e940e54b03c0e7"
    url "https://releases.mondoo.com/cnspec/13.35.1/cnspec_13.35.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

