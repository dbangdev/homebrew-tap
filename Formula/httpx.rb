class Httpx < Formula
  desc 'httpx - CLI to run HTTP file'
  homepage 'https://github.com/linux-china/httpx'
  version '0.2.0'
  license 'Apache-2.0'

  depends_on 'grpcurl'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/linux-china/httpx/releases/download/0.2.0/httpx-0.2.0-x86_64-apple-darwin.tar'
    sha256 'e148aa350836f9f91e11ed7fea9760c948fc317c644f10229786bd6d869838b4'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/linux-china/httpx/releases/download/0.2.0/httpx-0.2.0-x86_64-apple-darwin.tar'
    sha256 'e148aa350836f9f91e11ed7fea9760c948fc317c644f10229786bd6d869838b4'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/httpx"
  end

end