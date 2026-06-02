
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.21.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "f182d2c5635fe9bbe22162fad24043c7453871911dec2b2d5857732f1ad17e6f"
    url "https://releases.mondoo.com/cnspec/13.21.0/cnspec_13.21.0_darwin_amd64.tar.gz"
  else
    sha256 "aad64b3789afdda90b7ae361acaaedb6ae54a751998b1eac8dad1722404e928e"
    url "https://releases.mondoo.com/cnspec/13.21.0/cnspec_13.21.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

