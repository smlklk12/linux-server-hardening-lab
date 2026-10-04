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

<img width="626" height="377" alt="imge_!" src="[https://github.com/user-attachments/assets/35b3ea3e-9dcb-4048-90d1-cb8ce570e62d](https://github.com/user-attachments/assets/35b3ea3e-9dcb-4048-90d1-cb8ce570e62d)" />

<img width="637" height="196" alt="imge_ 2" src="[https://github.com/user-attachments/assets/eee489e2-3dab-4174-9822-0103ade45301](https://github.com/user-attachments/assets/eee489e2-3dab-4174-9822-0103ade45301)" />
