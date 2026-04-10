# li# 🖥️ Linux System Monitoring Script

## 📌 Overview

This project is a Bash-based system monitoring script that tracks CPU and Memory usage on a Linux machine.

It generates alerts when usage exceeds defined thresholds and logs these alerts for later analysis.

This project simulates basic real-world monitoring used in System Administration and DevOps.

---

## ⚙️ Features

* ✅ CPU usage monitoring
* ✅ Memory usage monitoring
* ✅ Custom threshold alerts
* ✅ Logging system (`alert.log`)
* ✅ Automation using cron jobs

---

## 🛠️ Technologies Used

* Bash scripting
* Linux commands:

  * `top`
  * `free`
  * `awk`
  * `grep`
  * `bc`
* Cron jobs

---

## 📊 How It Works

### CPU Monitoring

The script extracts CPU idle percentage and calculates usage:

```bash
top -bn1 | grep "Cpu(s)"
```

---

### Memory Monitoring

Memory usage is calculated using:

```bash
free | grep Mem
```

---

### Threshold Check

If usage exceeds limits:

* Displays alert in terminal
* Logs alert into `alert.log`

---

## 🚀 How to Run

```bash
chmod +x monitor.sh
./monitor.sh
```

---

## ⏰ Automation (Cron Job)

Run the script every 5 minutes:

```bash
crontab -e
```

Add this line:

```bash
*/5 * * * * /path/to/monitor.sh
```

---

## 📸 Screenshots

### 🟢 Normal Output

![Normal Output](screenshots/normal.png)

### 🔴 Alert Triggered

![Alert Output](screenshots/alert.png)

---

## 📁 Output Example

```
SYSTEM MONITORING SYSTEM
TIME: Fri Apr 10

CPU USAGE: 85%
ALERT: HIGH CPU USAGE!

MEMORY USAGE: 72%
ALERT: HIGH MEMORY USAGE!
```

---

## 🎯 Future Improvements

* Disk usage monitoring
* Email alert system
* Telegram/Slack notifications
* Web dashboard

---

## 💡 Author

Developed as part of Linux learning and system administration practice.
nux-system-monitor
