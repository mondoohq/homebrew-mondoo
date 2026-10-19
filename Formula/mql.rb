
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.7.1"
  

  if Hardware::CPU.intel?
    sha256 "da4603196e2a157cc3b7fe1439f647cb94a45f2931ef0718065596977c5fa0a9"
    url "https://releases.mondoo.com/mql/14.7.1/mql_14.7.1_darwin_amd64.tar.gz"
  else
    sha256 "5d2ce8424487b3bfb14910142f453ce9c44371051788523d89a755901c9cbd27"
    url "https://releases.mondoo.com/mql/14.7.1/mql_14.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

