
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.2.0"
  

  if Hardware::CPU.intel?
    sha256 "2652773d4c72490386da3c28da0a1304887cd2081b30a067f26892be04bb05d1"
    url "https://releases.mondoo.com/cnquery/11.2.0/cnquery_11.2.0_darwin_amd64.tar.gz"
  else
    sha256 "13a3161ce6b209378404bd5a875d9fcbaa5fe3796921a767888311cb7ce2baca"
    url "https://releases.mondoo.com/cnquery/11.2.0/cnquery_11.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

