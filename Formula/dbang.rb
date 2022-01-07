class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.3'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.3/dbang-0.1.3-x86_64-apple-darwin.tar'
    sha256 '9d247b8007d581f8a1f270ed69d0f095facba917cd1442af785587bc0bfe7713'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.3/dbang-0.1.3-aarch64-apple-darwin.tar'
    sha256 '1a97c65a4a53188e2d8b0c598ff9c7137184a87f481e9cc00cc30e77a963db2f'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end