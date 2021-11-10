# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.16.0/helmwave_0.16.0_darwin_arm64.tar.gz"
      sha256 "6ad45fb4f6ee74c9cd2f032fb36af14c535bfafc46d1576aac49b0db7521157b"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.16.0/helmwave_0.16.0_darwin_amd64.tar.gz"
      sha256 "9e51147bb8aa887393f0ec69c1214929e99df7f6b852072264cbce1290ddbb93"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.16.0/helmwave_0.16.0_linux_arm64.tar.gz"
      sha256 "35f9b47ad5af4dac667b28c6225ea2d94babeeded403ca540db0c376d2bb408d"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.16.0/helmwave_0.16.0_linux_amd64.tar.gz"
      sha256 "7e955e554b4d8623b57995a7ce9067aad1abb49aa9e6bd885588426a5fac5489"

      def install
        bin.install "helmwave"
      end
    end
  end
end
