
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.5.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3bbdb365e1215ca1d6bee47493982ad7885a4c0f50881febe6bbd0f195ddd801"
    url "https://releases.mondoo.com/cnspec/9.5.1/cnspec_9.5.1_darwin_amd64.tar.gz"
  else
    sha256 "536f426f7813946c938f069e2ea17d19f2a2d1acecaf92231a4f4f793ba6be06"
    url "https://releases.mondoo.com/cnspec/9.5.1/cnspec_9.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

