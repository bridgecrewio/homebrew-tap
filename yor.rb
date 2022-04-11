# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.140"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.140/yor_0.1.140_darwin_amd64.tar.gz"
      sha256 "9fe138f0882c9eecb6b2741ccaa2d1cb59ee31c76001e0d4a0bd495f260c05dd"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.140/yor_0.1.140_darwin_arm64.tar.gz"
      sha256 "2ad037b06e0bffc739067d48282325eace2b7bf977c4e38a591db752db24ac86"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.140/yor_0.1.140_linux_arm64.tar.gz"
      sha256 "cf7d710e3c6bed8dfa56972471b95957daf129f0e8ea9e343daf9fac952668a0"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.140/yor_0.1.140_linux_amd64.tar.gz"
      sha256 "c0d63b992481a3b6be24f220cc60b841500cbc9f04e7b6d7e6528546a4a6551c"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
