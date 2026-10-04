# Linux Server Hardening & Automation Lab

A comprehensive, hands-on implementation of enterprise server baseline security, firewall access control, SSH key-based hardening, and automated health monitoring on a Debian-based Linux environment.

---

## Key Technical Implementations

### Phase 1: Firewall Hardening & Telemetry Automation
* **Inbound Traffic Restriction (UFW):** Enforced a strict `default deny incoming` policy while restricting access strictly to authorized SSH management traffic (`22/tcp`).
* **Service Hardening:** Enforced outbound filtering controls and baseline access rules.
* **Health & Telemetry Automation:** Developed a custom Bash script (`health_check.sh`) to query and parse runtime telemetry:
  * Hostname, uptime, and system timestamp.
  * Root filesystem disk space utilization.
  * RAM consumption and percentage metrics.
  * Real-time firewall operational state.
  * Top resource-consuming processes sorted by CPU usage.

### Phase 2: SSH Protocol Hardening & Key-Based Access
* **Cryptographic Key Authentication:** Generated and deployed high-security `ED25519` key pairs for administrative access.
* **Permission Enforcement:** Hardened filesystem permissions (`700` for `~/.ssh` and `600` for `authorized_keys`).
* **Daemon Hardening (`sshd_config`):**
  * Disabled direct root login (`PermitRootLogin no`).
  * Enforced public key authentication (`PubkeyAuthentication yes`).
  * Completely eliminated password-based brute-force attack vectors (`PasswordAuthentication no`).

---

## Execution & Verification

### Run Telemetry Script:
```bash
```

---

## Verification Output

<img width="626" height="377" alt="imge_!" src="https://github.com/user-attachments/assets/cb48a31c-d65b-4d6e-9fd5-d9ef2134b8cd" />

<img width="637" height="196" alt="imge_ 2" src="https://github.com/user-attachments/assets/a56f7d65-9252-4603-b1c5-96c6b17b4fa8" />

<img width="602" height="108" alt="imge" src="https://github.com/user-attachments/assets/65409f37-c8a0-41bd-b313-40b9332852d4" />

