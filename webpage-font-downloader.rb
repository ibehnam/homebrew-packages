class WebpageFontDownloader < Formula
  include Language::Python::Virtualenv

  desc "Download and convert fonts from webpages"
  homepage "https://github.com/ibehnam/webpage-fonts-downloader"
  url "https://github.com/ibehnam/webpage-fonts-downloader/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "21dc1896eb62fd75ba84d936b8e7d08d2da72f4848660e77bd50a251e489d33c"

  depends_on "python@3.13"

  resource "curl-cffi" do
    url "https://files.pythonhosted.org/packages/36/fc/661c64037ff37bf7ba0a6ba0768134c412edc0c783da255f2e68c0e13cf6/curl_cffi-0.7.4.tar.gz"
    sha256 "52e2f71b7862ec7f4f0e8a7e0f8d2f0ebdfb31c4061e53ba9c75ba83fe0be7b1"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  resource "cssutils" do
    url "https://files.pythonhosted.org/packages/f7/4e/81519ee71bba5a1d93039e5f66d33e0261cc23b972fa54f87657e40d3a1c/cssutils-2.11.1.tar.gz"
    sha256 "9e433f9e14e2e7564a5c7b0394ebb4a54e69e19e27db35481f1e11c94c5d14ad"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/a9/b7/d9e3f12af310e1120c21603644a1cd86f59060e040ec5c3a80b8f05fae30/pydantic-2.9.2.tar.gz"
    sha256 "d155cef71265d1e9807ed1c32b4c8deec042a44a50a4188b25ac67ecd81a9c0f"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/c6/c5/87a4e5f69a2774642e34c28991cc604c4f5d5e22e87bba7a0e1e7c30e8d0/fonttools-4.55.3.tar.gz"
    sha256 "49c63e0e35f88058d2c70f86555f4fc2c8e6c3c7f85965e5d0a8e0f3e1c1e3c8"
  end

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
    sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/e2/aa/6b6a9b9f8537b872f552ddd46dd3da230367754b6f707b8e1e963f515ea3/pydantic_core-2.23.4.tar.gz"
    sha256 "2584f7cf844ac4d970fba483a717dbe10c1c1c96a969bf65d61ffe94df1b2863"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
    sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/b0/ee/9b19140fe824b367c04c5e1b369942dd754c4c5462d5674002f75c4dedc1/certifi-2024.8.30.tar.gz"
    sha256 "bec941d2aa8195e248a60b31ff9f0558284cf01a52591ceda73ea9afffd69fd9"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"webpage-font-downloader", "--help"
  end
end
