
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.11.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "d9ad4ab0a427be01f7a4c4afe929c771a8e961628c828e46471e4e707690316c"
    url "https://releases.mondoo.com/cnspec/14.11.2/cnspec_14.11.2_darwin_amd64.tar.gz"
  else
    sha256 "1b912d857eb33c05e3b64a05304eb28dc9f98889004d9c42b7595429879156df"
    url "https://releases.mondoo.com/cnspec/14.11.2/cnspec_14.11.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

