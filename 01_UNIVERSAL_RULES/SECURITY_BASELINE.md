# Universal Security and Privacy Baseline

Adapt this baseline to the app's actual data, jurisdictions, integrations, users, and threat model. It is not a substitute for legal advice or a complete security audit.

- Create a data inventory: data item, purpose, source, sensitivity, storage, access, recipients/processors, retention, deletion behavior, and user control.
- Collect only data necessary for stated features. Prefer optional permissions and manual alternatives where possible.
- Use secure transport; protect credentials and tokens; never log secrets or sensitive personal content.
- Keep client and server trust boundaries explicit. Client validation is not authorization.
- Authenticate API requests and authorize every resource/action server-side.
- Apply database access policies such as row-level ownership where supported. Test cross-account access denial.
- Document third-party SDKs and their data behavior. Review transitive SDK changes before release.
- Implement account deletion and associated data deletion if accounts can be created. Define exceptions and legal retention transparently.
- Implement data export, correction, retention and consent controls when applicable to the product and law.
- Add rate limiting, abuse controls, audit trails for sensitive actions, secure recovery, and incident response appropriate to the threat model.
- Do not include production credentials or personal data in test fixtures, screenshots, logs, crash reports, or repository history.
- Define age audience and child-safety implications early. Do not claim an app is “not for children” as a shortcut if the design or marketing targets children.
- Threat-model account takeover, insecure direct object references, privilege escalation, spam, scraping, file upload abuse, and dependency compromise where relevant.
