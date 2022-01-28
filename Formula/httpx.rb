class Httpx < Formula
  desc 'httpx - CLI to run HTTP file'
  homepage 'https://github.com/linux-china/httpx'
  version '0.3.0'
  license 'Apache-2.0'

  depends_on 'grpcurl'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/linux-china/httpx/releases/download/0.3.0/httpx-0.3.0-x86_64-apple-darwin.tar'
    sha256 '32d0d2c49c8c583f83c4eeca544d8e192ebccd9deb388d924b37e39d61ae1982'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/linux-china/httpx/releases/download/0.3.0/httpx-0.3.0-x86_64-apple-darwin.tar'
    sha256 '32d0d2c49c8c583f83c4eeca544d8e192ebccd9deb388d924b37e39d61ae1982'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/httpx"
  end

end