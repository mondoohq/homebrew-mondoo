
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.1.0"
  

  if Hardware::CPU.intel?
    sha256 "e49211541da52fb820857a142a7c56e173e0691fcfc6cf8ed914443679cd3a60"
    url "https://releases.mondoo.com/mql/13.1.0/mql_13.1.0_darwin_amd64.tar.gz"
  else
    sha256 "af77dde70ebcd24dcf963d826c36fd496398f2b69a95c2874d219b85cfa8ec66"
    url "https://releases.mondoo.com/mql/13.1.0/mql_13.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

