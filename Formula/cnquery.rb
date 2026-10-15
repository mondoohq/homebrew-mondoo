
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.7.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "df22a0a807c8200258edbabd0df6d620ea9daaa8948199948117eb96c63ae02e"
    url "https://releases.mondoo.com/cnspec/14.7.0/cnspec_14.7.0_darwin_amd64.tar.gz"
  else
    sha256 "6c754ea9d34aaba5775b7d4ef6870fb15823dc5290c26da6ceb495bdf5738b90"
    url "https://releases.mondoo.com/cnspec/14.7.0/cnspec_14.7.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

