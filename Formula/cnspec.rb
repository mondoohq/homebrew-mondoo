
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.53.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ac4931e61f831d7be2b133f4d211ff5fd37db75b33685f63135797b8b94651e7"
    url "https://releases.mondoo.com/cnspec/11.53.1/cnspec_11.53.1_darwin_amd64.tar.gz"
  else
    sha256 "26090802c0f6b5347c402852e2673f02d7abbc67c204117c85283aba6255d44c"
    url "https://releases.mondoo.com/cnspec/11.53.1/cnspec_11.53.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

