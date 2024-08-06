
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.16.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0e5361ce85cbd38563edaaee3f69af4539cd5d0ef2b2523792a7004c579c402e"
    url "https://releases.mondoo.com/cnspec/11.16.0/cnspec_11.16.0_darwin_amd64.tar.gz"
  else
    sha256 "a3a89253ad268133d30e05520f10ae7429f41af935a8a4ad1f323b7269e3a08c"
    url "https://releases.mondoo.com/cnspec/11.16.0/cnspec_11.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

