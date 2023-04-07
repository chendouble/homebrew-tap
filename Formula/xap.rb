# Generated with JReleaser 1.5.1 at 2023-04-07T16:02:39.759147+08:00
class Xap < Formula
  desc "CLI for XPIE Application Platform"
  homepage "https://www.xpie.cn"
  url "https://github.com/chendouble/xap-releases/releases/download/4.0.0-Alpha1/xap-adminui-cli-app-4.0.0-Alpha1.zip"
  version "4.0.0-Alpha1"
  sha256 "dced21b7cd9358059a9fd36457f547965bf198d0eea26c41a3972bdae1a8ee3c"
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
