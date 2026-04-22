
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.5.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "ca1fefa4a7f54b8c9d8ae7f19f0195e9cc6d2705967ac11ca381ee0262fb9c70"
    url "https://releases.mondoo.com/cnspec/13.5.1/cnspec_13.5.1_darwin_amd64.tar.gz"
  else
    sha256 "1241a6c8b8de22b52b3ac9684dc4ed605207a7597db0297ef6cd1041af4cdc2b"
    url "https://releases.mondoo.com/cnspec/13.5.1/cnspec_13.5.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

