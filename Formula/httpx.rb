class Httpx < Formula
  desc 'httpx - CLI to run HTTP file'
  homepage 'https://github.com/linux-china/httpx'
  version '0.4.2'
  license 'Apache-2.0'

  depends_on 'grpcurl'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/linux-china/httpx/releases/download/0.4.2/httpx-0.4.2-x86_64-apple-darwin.tar'
    sha256 '1d40af44967c339cfd6b7bb9de945ff0f78915230ac88f2967683ed7f4019b75'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/linux-china/httpx/releases/download/0.4.2/httpx-0.4.2-x86_64-apple-darwin.tar'
    sha256 '1d40af44967c339cfd6b7bb9de945ff0f78915230ac88f2967683ed7f4019b75'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/httpx"
  end

end