class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.1.7'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.7/dbang-0.1.7-x86_64-apple-darwin.tar'
    sha256 'df4c70ac5e20f42746544e4c841226e0351d72dccb7a963fe482778a0c1bba4a'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/dbangdev/dbang/releases/download/0.1.7/dbang-0.1.7-aarch64-apple-darwin.tar'
    sha256 '043073b7f2dd5b2cbca6a62c74d4b75f4c646b0f52f564a15f2a1481415a3331'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end