# Passkeys for consumer apps — research gate

I searched the copied vault first and found no existing note on passkeys, so
this is a proposed new resource. I have not modified the vault, index, tags,
or log.

## Key takeaways

1. **Passkeys replace shared passwords with scoped public-key credentials.**
   The app keeps a public key while the private key remains in the user's
   authenticator, reducing the impact of server-side credential leaks.

2. **They are designed to resist phishing.** WebAuthn credentials are bound
   to the relying party/app origin, so a fake site cannot normally use the
   credential created for the legitimate service.

3. **Consumer UX depends on platform-mediated unlock and recovery.** Users
   typically approve sign-in with a biometric, device PIN, or pattern; synced
   passkeys make credentials available across devices through a passkey
   provider, while cross-device sign-in can use a proximity-checked flow.

4. **Adoption is an integration and account-lifecycle problem, not just a
   login-button change.** Apps need correct WebAuthn/relying-party
   configuration, platform support, account linking, fallback and recovery
   paths, and clear handling for users who lose or change devices.

Would you like the eventual note to emphasize (a) security and threat
model, (b) consumer UX and recovery, (c) implementation/platform
integration, or (d) rollout and migration from passwords? Please confirm
the emphasis before I create or write any vault note.
