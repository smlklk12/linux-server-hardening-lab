# Linux Server Hardening & Automation Lab

A hands-on implementation of enterprise server baseline security, firewall access control, and automated health monitoring on a Debian-based Linux environment.

---

##  Key Technical Implementations

* **Inbound Traffic Restriction (UFW):** Configured a strict `default deny incoming` policy while allowing legitimate management traffic via SSH (`22/tcp`).
* **Service Hardening:** Enforced outbound filtering controls and baseline access rules.
* **Health & Telemetry Automation:** Developed a custom Bash script (`health_check.sh`) to query and parse runtime telemetry:
  * Hostname, uptime, and system timestamp.
  * Root filesystem disk space utilization.
  * RAM consumption and percentage metrics.
  * Real-time firewall operational state.
  * Top resource-consuming processes sorted by CPU usage.

---

##  Execution & Verification

To run the automated audit script on the host:

```bash
chmod +x health_check.sh
./health_check.sh
```

---

## Verification Output

<img width="626" height="377" alt="imge_!" src="https://github.com/user-attachments/assets/9665fdcf-3566-4f2b-b665-69c02a1a6414" />
<img width="637" height="196" alt="imge_ 2" src="https://github.com/user-attachments/assets/e05ad28c-15f9-40c0-966e-36feddbda856" />

