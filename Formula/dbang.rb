class Dbang < Formula
  desc 'CLI to manage Deno scripts'
  homepage 'https://dbang.dev'
  version '0.2.2'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/dbangdev/dbang/releases/download/v0.2.2/dbang-0.2.2-x86_64-apple-darwin.tar'
    sha256 'fdc717b317325f9cfa9582a328ab788d826a2d4113fcb3201a435bccf5b93b61'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/dbangdev/dbang/releases/download/v0.2.2/dbang-0.2.2-aarch64-apple-darwin.tar'
    sha256 'a0ce6b08b8cdf4fa921d91bcc3a22074fae69b949cdb98cb2487e3416798953b'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dbang"
    bin.install_symlink "#{libexec}/bin/dbang-shim"
  end

end
