
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.9.1"
  

  if Hardware::CPU.intel?
    sha256 "8f6d49682473588f6101cdcae5ddf618f3e2e82dcc2a9d417dc0fef3387ef192"
    url "https://releases.mondoo.com/cnquery/10.9.1/cnquery_10.9.1_darwin_amd64.tar.gz"
  else
    sha256 "30b7ace123b508b3f77709a8eaf75716877aba4c1b12072172ddbe4a5d9771ef"
    url "https://releases.mondoo.com/cnquery/10.9.1/cnquery_10.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

