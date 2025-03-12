
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.45.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "387c126b9d6dbed922191cc8edb54c6a626da4b42373fbf4482b601ded6ea6be"
    url "https://releases.mondoo.com/cnspec/11.45.1/cnspec_11.45.1_darwin_amd64.tar.gz"
  else
    sha256 "d44ebb22037304636141cd1042a554c9457072160828e49f7f33226511beac26"
    url "https://releases.mondoo.com/cnspec/11.45.1/cnspec_11.45.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

