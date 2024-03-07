**Postmortem: Web Stack Outage**

# Issue Summary:

# Duration: January 15, 2024, 9:00 AM - January 15, 2024, 11:30 AM (UTC)
Impact: The service experienced intermittent downtime, affecting 30% of users. Users encountered slow loading times and intermittent errors during this period.
Root Cause: A misconfiguration in the load balancer caused traffic redirection issues, leading to overloaded servers and service degradation.

# Timeline:

- 9:00 AM: Issue detected via monitoring alerts indicating a surge in server response times.
- 9:05 AM: Engineering team notified of the issue.
- 9:10 AM: Investigation initiated focusing on server logs and load balancer configurations.
- 9:30 AM: Initial assumption made that increased traffic was due to a DDoS attack.
- 9:45 AM: Security team engaged to investigate potential security breaches.
- 10:00 AM: Realised that the load balancer misconfiguration was redirecting traffic inefficiently, causing server overload.
- 10:15 AM: Incident escalated to senior engineering management for additional support.
- 10:30 AM: Load balancer configuration rollback attempted to restore normal traffic distribution.
- 11:00 AM: Service partially restored, but intermittent errors persisted.
- 11:30 AM: Complete resolution achieved after load balancer configuration rollback was successful.
# Root Cause and Resolution:

Root Cause: Misconfiguration in the load balancer's routing rules led to uneven traffic distribution among servers, causing overload and service degradation.
Resolution: Load balancer configuration rollback to a previous stable version resolved the issue by restoring normal traffic distribution and relieving server overload.
Corrective and Preventative Measures:

# Improvements/Fixes:
Conduct regular audits of load balancer configurations to prevent misconfigurations.
Enhance monitoring systems to detect traffic anomalies and misconfigurations promptly.
Implement automated testing for load balancer configurations to prevent human errors during updates.

# Tasks:
Schedule bi-weekly load balancer configuration audits to ensure adherence to best practices.
Implement automated alerts for abnormal traffic patterns, triggering immediate investigation.
Develop and implement a comprehensive testing suite for load balancer configurations to catch errors before deployment.

