
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.69.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "736ca9d61b44f7732d1953b26c3aad95222df743b5f2d67733d63dc67ac41ed9"
    url "https://releases.mondoo.com/cnspec/11.69.1/cnspec_11.69.1_darwin_amd64.tar.gz"
  else
    sha256 "e169a4b01bfe300c869f8270ab98fc26242a60bc7f5becba75de33b9897acece"
    url "https://releases.mondoo.com/cnspec/11.69.1/cnspec_11.69.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

