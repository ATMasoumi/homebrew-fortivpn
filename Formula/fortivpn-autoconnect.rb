class FortivpnAutoconnect < Formula
  desc "🚀 Automated FortiVPN connection with 2FA OTP extraction from Messages app"
  homepage "https://github.com/ATMasoumi/fortivpn-autoconnect"
  url "https://github.com/ATMasoumi/fortivpn-autoconnect/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "efd8c049f0b18cb549108c3fcaa51620e622c31b92d6658513266d2ad6736f88"
  license "MIT"

  depends_on "openfortivpn"
  depends_on "expect"

  def install
    bin.install "fortivpn-autoconnect"
    bin.install "fortivpn-setup"
    bin.install "get_otp_code.scpt"
    etc.install "forticonfig.template"
    doc.install "README.md"
    doc.install "LICENSE"
  end

  def caveats
    <<~EOS
      Welcome to FortiVPN Auto-Connect v1.6.0! 🚀

      ✨ NEW in v1.6.0: Automated Touch ID Configuration!
      
      To get started:
        1. Run: fortivpn-setup
        2. Follow the interactive setup wizard with automated Touch ID setup
        3. Connect with: fortivpn-autoconnect

      Optional: Create your own alias for convenience:
        echo 'alias forti="fortivpn-autoconnect"' >> ~/.zshrc

      Key Features:
        🔐 Automated Touch ID configuration for sudo_local  
        📱 Automatic 2FA OTP extraction from Messages app
        🛠️ Interactive setup wizard with system validation
        🎨 Beautiful color-coded output

      Required permissions:
        - Touch ID for sudo (now auto-configured!)
        - Full Disk Access for Terminal app
        - Messages app access for 2FA extraction

      Configuration will be stored in: ~/.fortivpn/

      For help and troubleshooting:
        https://github.com/ATMasoumi/fortivpn-autoconnect
    EOS
  end

  test do
    # Test that the main scripts are installed and executable
    assert_predicate bin/"fortivpn-autoconnect", :exist?
    assert_predicate bin/"fortivpn-setup", :exist?
    assert_predicate bin/"get_otp_code.scpt", :exist?
    
    # Test that help option works
    system "#{bin}/fortivpn-setup", "--help"
  end
end
