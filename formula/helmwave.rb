# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.12.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.2/helmwave_0.12.2_darwin_amd64.tar.gz"
      sha256 "1342ddd39d5d9959e53bc5475cb7979fdc8a0ca6accaa370334e13e47e74e903"
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.2/helmwave_0.12.2_darwin_arm64.tar.gz"
      sha256 "1ef6791787b7e8a094ffb35075c5de95f61ce45f534c881ad977592285f51e9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.2/helmwave_0.12.2_linux_amd64.tar.gz"
      sha256 "9b8aa85e91a352eab95e56375c63c6d60ac888633998f691128434aa8f99d71d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.2/helmwave_0.12.2_linux_arm64.tar.gz"
      sha256 "4a9fd4e6bc81ea69b83bdbe1c2b71906553540a25cf7afcdcb19460b60fcde3a"
    end
  end

  def install
    bin.install "helmwave"
  end
end
