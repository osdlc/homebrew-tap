# Written by .github/workflows/release.yml in osdlc/sitroom for sitroom 0.9.0.
# The release workflow rewrites this file on each release; do not edit it by hand.
class Sitroom < Formula
  desc "Developer dashboard with a terminal UI and a web UI"
  homepage "https://github.com/osdlc/sitroom"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/osdlc/sitroom/releases/download/v0.9.0/sitroom-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "ccbb10a9152108eee1cfcf17ca61b90ea052f8cc8002c770b2279c11d420cb55"
    end
    on_intel do
      url "https://github.com/osdlc/sitroom/releases/download/v0.9.0/sitroom-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "380af4dffb12473849a94e235f86e0430f035a3f76a03b95b9f53c12fa082c3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osdlc/sitroom/releases/download/v0.9.0/sitroom-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c880c2a906fa98e2a7d59b82f8a26c4a1b4f8b4df11f56dbfa7b7d4b8f45a58"
    end
    on_intel do
      url "https://github.com/osdlc/sitroom/releases/download/v0.9.0/sitroom-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29905b46caafc7b02cde143637d8044e66f291b602c482918cdb95e62b2f44ee"
    end
  end

  def install
    bin.install "sitroom", "sit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitroom --version")
    assert_match version.to_s, shell_output("#{bin}/sit --version")
  end
end
