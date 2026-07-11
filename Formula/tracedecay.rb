class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.58.tar.gz"
  sha256 "2119d0d07ccf550fe92669d45a8dcb283d545dc889385a23b871e88d514fcec0"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.58"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "92b15eba5c8f4914b4ed9089c31506e8b8ad81c455031c89f07af468fdc85de6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f1b09524ff370e28bb27e1c20aa71067549784a83feff3dc640ce80e7f65f171"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
