class Httpx < Formula
  desc 'httpx - CLI to run HTTP file'
  homepage 'https://github.com/linux-china/httpx'
  version '0.1.0'
  license 'Apache-2.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/linux-china/httpx/releases/download/0.1.0/httpx-0.1.0-x86_64-apple-darwin.tar'
    sha256 '6c4732eb1bdf42a5be3645763f85e39b677f1e2e7498b5e50807d38a35564303'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/linux-china/httpx/releases/download/0.1.0/httpx-0.1.0-x86_64-apple-darwin.tar'
    sha256 '6c4732eb1bdf42a5be3645763f85e39b677f1e2e7498b5e50807d38a35564303'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/httpx"
  end

end