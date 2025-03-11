
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.45.0"
  

  if Hardware::CPU.intel?
    sha256 "228410d482082bb6e078ddea822a6d7fe08d5613caaac3035498cb8978c93e4f"
    url "https://releases.mondoo.com/cnquery/11.45.0/cnquery_11.45.0_darwin_amd64.tar.gz"
  else
    sha256 "c8645243c969b9f8770659faa1dcb37b51416d2a254948eead06fce50332585c"
    url "https://releases.mondoo.com/cnquery/11.45.0/cnquery_11.45.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

