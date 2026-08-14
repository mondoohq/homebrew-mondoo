
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.33.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "9de8e06eb3e42a3506f1f336f16e6978194bc4c03f94625e0f4b53c1eaa4f8c2"
    url "https://releases.mondoo.com/cnspec/13.33.0/cnspec_13.33.0_darwin_amd64.tar.gz"
  else
    sha256 "01aaf10a17fee311bd22a2053853ebb4a5a11aa647998d7416137a8325bfa2aa"
    url "https://releases.mondoo.com/cnspec/13.33.0/cnspec_13.33.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

