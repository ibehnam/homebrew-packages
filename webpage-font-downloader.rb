class WebpageFontDownloader < Formula
  include Language::Python::Virtualenv

  desc "Download and convert fonts from webpages"
  homepage "https://github.com/ibehnam/webpage-fonts-downloader"
  url "https://github.com/ibehnam/webpage-fonts-downloader/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "21dc1896eb62fd75ba84d936b8e7d08d2da72f4848660e77bd50a251e489d33c"
  license "MIT"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    system libexec/"bin/pip", "install", "--no-cache-dir", buildpath
    bin.install_symlink libexec/"bin/webpage-font-downloader"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/webpage-font-downloader --help")
  end
end
