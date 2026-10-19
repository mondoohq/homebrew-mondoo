
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.7.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "a36d47a4c3e59edf02b41863fcfd55592a4ad4116be42b107f36883fc862246f"
    url "https://releases.mondoo.com/cnspec/14.7.1/cnspec_14.7.1_darwin_amd64.tar.gz"
  else
    sha256 "5ea0440ce6a00ab4792f628b54b5ba84ac33089aa113e182c3797be2b99cad7d"
    url "https://releases.mondoo.com/cnspec/14.7.1/cnspec_14.7.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

