class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.1'
  url 'https://github.com/dbangdev/dbang/releases/download/0.1.1/dbang-0.1.1-mac-x64.tar'
  sha256 '972ffaa975ed339cd30b408dd742131b13fe0f22e1a149b65756fefb47ff0456'
  license 'Apache-2.0'

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end