# Generated with JReleaser 1.5.1 at 2023-04-07T20:48:34.723916+08:00
class Xap < Formula
  desc "CLI for XPIE Application Platform"
  homepage "https://www.xpie.cn"
  url "https://github.com/chendouble/xap-releases/releases/download/4.0.0-Alpha1/xap-adminui-cli-app-4.0.0-Alpha1.zip"
  version "4.0.0-Alpha1"
  sha256 "87d7fde7cc2fecfe5eced16299caa5b79249aef1da9f18f64c754dd7e788c98e"
  license "Private"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/xap" => "xap"
  end

  test do
    output = shell_output("#{bin}/xap --version")
    assert_match "4.0.0-Alpha1", output
  end
end
