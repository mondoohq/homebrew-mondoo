# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1


class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.28.4"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "e66f129e24c26f25ea698524052a16f5a4b02e427cf167aa8fe15f7c72ebcfbc"
    url "https://releases.mondoo.com/mondoo/8.28.4/mondoo_8.28.4_darwin_amd64.tar.gz"
  else
    sha256 "e66f129e24c26f25ea698524052a16f5a4b02e427cf167aa8fe15f7c72ebcfbc"
    url "https://releases.mondoo.com/mondoo/8.28.4/mondoo_8.28.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

