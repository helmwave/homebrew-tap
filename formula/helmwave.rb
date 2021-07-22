# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.12.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.1/helmwave_0.12.1_darwin_amd64.tar.gz"
      sha256 "d7689f7318316d945696bf31aff101a8c56cc3f18588d628c1e5de5e7d8e15d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.1/helmwave_0.12.1_darwin_arm64.tar.gz"
      sha256 "7dc4a36887ff3bb2ce4aa853cc0cd046ac7d2fbef8c61a011202c105b6ba7535"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.1/helmwave_0.12.1_linux_amd64.tar.gz"
      sha256 "86a96e627fd75d4e60460e1bd948055ab70e9115d2acddb6478fdac154c129f2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.1/helmwave_0.12.1_linux_arm64.tar.gz"
      sha256 "3cc132e22ac507104362b04c0913ed9d0ffa41678486126ff02b6eb61132ee05"
    end
  end

  def install
    bin.install "helmwave"
  end
end
