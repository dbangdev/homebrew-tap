class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.4'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.4/dbang-0.1.4-x86_64-apple-darwin.tar'
    sha256 '0995fc4621f148ca7c3e8bc84caa3a7fa859b1dc6d29d3c4ebeb88dde675bd9c'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.4/dbang-0.1.4-aarch64-apple-darwin.tar'
    sha256 'be05b906fcc74815a0fe8b62db23d4139dfb983a406dfcbc882632a39c662532'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end