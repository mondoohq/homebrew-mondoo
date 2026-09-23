
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.0.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "02baacf70a8b9bb01e9376fe74a9f6e708f51dde18c0fd257d519fb0075dfede"
    url "https://releases.mondoo.com/cnspec/14.0.0/cnspec_14.0.0_darwin_amd64.tar.gz"
  else
    sha256 "8ee2477e938cbc079768a9d7e7d8cee2589fa9d1889b54665772de9a0bbcd8e3"
    url "https://releases.mondoo.com/cnspec/14.0.0/cnspec_14.0.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

