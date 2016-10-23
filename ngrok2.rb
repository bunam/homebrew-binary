class Ngrok2 < Formula
  desc "Secure tunnels to localhost"
  homepage "https://ngrok.com/"
  version "2.1.3"

  if MacOS.prefer_64_bit?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-amd64.zip"
    sha256 "63c9aeee01956f2e9627581f78a2e498e3364455240d663ccf7184c86d0fe6e3"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-386.zip"
    sha256 "5f39f69ba742c9bdbdc8390aab5c8cb1ec209920ed14ea927c7c8b4e5e74850b"
  end

  bottle :unneeded

  def install
    bin.install "ngrok"
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok -version")
  end
end
