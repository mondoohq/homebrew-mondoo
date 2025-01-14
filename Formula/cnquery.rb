
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.37.0"
  

  if Hardware::CPU.intel?
    sha256 "0727fcccaaa67e976eb5f27cdb072ce46d7ad8fba079beb93b7f6a6c59b93e61"
    url "https://releases.mondoo.com/cnquery/11.37.0/cnquery_11.37.0_darwin_amd64.tar.gz"
  else
    sha256 "66c8e89cb9c0262a06cf6f3286a43f8b9c16fc29cd2cd926721b2835a8930549"
    url "https://releases.mondoo.com/cnquery/11.37.0/cnquery_11.37.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

