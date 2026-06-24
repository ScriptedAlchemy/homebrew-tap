class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.12.tar.gz"
  sha256 "365abb421ae4e24187fbb245f208d93c632202eacbc9a52d10b63da7bebc91c1"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.12"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0e40bdadcea94bb10a277e320c2fd46d6f2dbd1610d254b3b8434b570fb3e1a1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ce36c22b942ae297d2a728e31268a7899add3d9de589b330eb0a012ec50d5f9a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
