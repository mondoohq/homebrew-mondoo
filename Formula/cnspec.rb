
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.20.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9f033a90dcb12b768642a15c92221f51748ddba2777f7bb9d494082de6fa15b4"
    url "https://releases.mondoo.com/cnspec/11.20.0/cnspec_11.20.0_darwin_amd64.tar.gz"
  else
    sha256 "2fe687d7cf91079f88d539646754db0d87df389bee436116fb7c6e7acfc3ed92"
    url "https://releases.mondoo.com/cnspec/11.20.0/cnspec_11.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

