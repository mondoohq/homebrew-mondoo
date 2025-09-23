
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.2.0"
  

  if Hardware::CPU.intel?
    sha256 "13c31dbc2a0634ac341d7040ce8a7abf6e716c2d53d37a1e45f741f49c404400"
    url "https://releases.mondoo.com/cnquery/12.2.0/cnquery_12.2.0_darwin_amd64.tar.gz"
  else
    sha256 "856842a6de82a0573400c602f3eaecd8f3516a20b6d4ffdb0fe5eaa8380723ea"
    url "https://releases.mondoo.com/cnquery/12.2.0/cnquery_12.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

