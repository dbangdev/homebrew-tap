class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.2'
  url 'https://github.com/dbangdev/dbang/releases/download/0.1.2/dbang-0.1.2-mac-x64.tar'
  sha256 '7bfce53e2a91d9e4646478a721b7a2d81486b2c92a16ec24cfa237b31cb18813'
  license 'Apache-2.0'

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end