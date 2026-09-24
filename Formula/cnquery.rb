
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.0.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "e429867b04b760a0232ad9ac34ab63848f9c6054597ce94121174b8a63ed8c38"
    url "https://releases.mondoo.com/cnspec/14.0.1/cnspec_14.0.1_darwin_amd64.tar.gz"
  else
    sha256 "782dc90c0df5aca5f784eb33a5a6f1a06321c2e41e9638a39f759e505a9f0e40"
    url "https://releases.mondoo.com/cnspec/14.0.1/cnspec_14.0.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

