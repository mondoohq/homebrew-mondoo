
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.26.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "70e8991d56a92ec1ec363b9e0ae5afa6b05068f919186f379466c645e99d3d5f"
    url "https://releases.mondoo.com/cnspec/13.26.1/cnspec_13.26.1_darwin_amd64.tar.gz"
  else
    sha256 "f5f04c796a25c98f08b829c9b78ed2ae93e70a46702616188eae23f2d36f7a03"
    url "https://releases.mondoo.com/cnspec/13.26.1/cnspec_13.26.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

