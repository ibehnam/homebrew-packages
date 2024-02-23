# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Autocisco < Formula
  desc "Automatically connects to University VPN (currently CMU's Cisco VPN) using your credentials"
  homepage "https://aplaceofmind.notion.site/AutoCisco-My-First-Project-in-Rust-c40c831d5eb0447ea9246c0514558195?pvs=74"
  url "https://github.com/ibehnam/AutoCisco/releases/download/stable-0.1.4/autocisco-mac.tar.gz"
  sha256 "5b9b4b4cb588de6e9003232d36d4f11b880bc5b7b9b43f245a5d2d9f3c1c15f0"
  version "0.1.4"

  def install
    bin.install "autocisco"
  end
end
