class Dbang < Formula
  desc "CLI to manage Deno scripts"
  homepage "https://dbang.dev"
  version "0.1.0"
  url "https://github.com/dbangdev/dbang/releases/download/0.1.0/dbang-0.1.0-mac-x64.tar"
  sha256 "2fc3d0bcebf86e3080ffaf1eee926219fed11ff45f36d03e758731ce970e55df"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end