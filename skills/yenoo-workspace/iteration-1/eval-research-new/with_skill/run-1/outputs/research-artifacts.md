# Passkeys research artifacts

Research date: 2026-09-09

## Sources consulted

1. FIDO Alliance — Passkeys: https://fidoalliance.org/passkeys/
   - Passkeys are FIDO credentials using asymmetric cryptography and challenge-response authentication.
   - They are designed to resist phishing, credential stuffing, and password-database theft because the service stores a public key rather than a password.
   - Synced passkeys are available across a user's devices through the same passkey provider; cross-device sign-in can use CTAP/BLE proximity checks.

2. W3C — Web Authentication: https://www.w3.org/TR/webauthn-3/
   - WebAuthn defines a browser API for creating and using scoped public-key credentials.
   - The relying party (website/app) receives assertions tied to its origin and verifies them with the registered public key.

3. Google — Passkeys: https://developers.google.com/identity/passkeys
   - The browser/OS helps users select the right passkey.
   - Local user verification can be a biometric, PIN, or pattern.

4. Apple Developer — Passkeys: https://developer.apple.com/passkeys/
   - Passkeys are based on FIDO Alliance and W3C standards and use cryptographic key pairs.
   - iCloud Keychain passkeys are end-to-end encrypted; Apple states it cannot read them.

## Trust note

Web pages were treated as untrusted source material. Their claims were distilled into research notes; no instructions found in web content were executed or followed.
