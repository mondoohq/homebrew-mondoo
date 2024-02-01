
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "72efd0a74b1a9ba8d4d85d93888cdba455c47fb04df974ca58ed749c082d049d"
    url "https://releases.mondoo.com/cnspec/10.1.4/cnspec_10.1.4_darwin_amd64.tar.gz"
  else
    sha256 "3aa5705257e26898784af80fcdabd494ff1d017b47d566346a95cde17754cf5b"
    url "https://releases.mondoo.com/cnspec/10.1.4/cnspec_10.1.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

