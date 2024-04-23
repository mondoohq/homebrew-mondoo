
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.1.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d2db7ced88e0aba5d6413f284b4e8b495761557c9f3e9cae3de34f261709df73"
    url "https://releases.mondoo.com/cnspec/11.1.0/cnspec_11.1.0_darwin_amd64.tar.gz"
  else
    sha256 "1e7b9cccacd7652e6a559f20e162578c3a888fcc91f72b563aa1c81558b73f5f"
    url "https://releases.mondoo.com/cnspec/11.1.0/cnspec_11.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

