
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.0.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ce351791535651d02779ebd2504cd516ff8370823963ef259b4a88e33ab50a11"
    url "https://releases.mondoo.com/cnspec/10.0.3/cnspec_10.0.3_darwin_amd64.tar.gz"
  else
    sha256 "e46f81d5331f7b6cd31e708b8915dc0fa1b9798846b335cea45263abdec95246"
    url "https://releases.mondoo.com/cnspec/10.0.3/cnspec_10.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

