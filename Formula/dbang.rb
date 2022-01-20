class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.6'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.6/dbang-0.1.6-x86_64-apple-darwin.tar'
    sha256 '9a49cb8a862405f0f9d479053e3a535fd6bf3024f7ba289b6dfedefe3d8a8d27'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.6/dbang-0.1.6-aarch64-apple-darwin.tar'
    sha256 'd1600e7286d4878ecc72543797fa3d331a8af64e4256cc262e4dc1206f4db8d1'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end