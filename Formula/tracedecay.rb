class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.20.tar.gz"
  sha256 "322dc5809de398ba2cb91686b1704b4293fddb82c42ab9c4542c0e397dc52395"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.20"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e3aac8bcc08c0a48b0c5eeaff308bc0aa8b750c43eeee9a0f67a2b18ef527e4a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "12f16e4da6c88e4d3937accb3937af2acf746b08d0eee1467098a53ef4ab8712"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
