PART 1: Justification For Additional Components
3 servers - Firewalls are placed in front of each web server to control incoming and outgoing traffic, block unauthorized access, and protect against potential threats.
1 SSL certificate - An SSL certificate is installed on the load balancer to enable HTTPS, encrypting traffic between users' browsers and the web servers.
3 monitoring clients - Each server has a monitoring client to collect server metrics, logs, and other performance data.

PART 2: What are firewalls for - Firewalls are added for security. They act as a barrier between the internet and the web servers, controlling traffic to prevent malicious access and attacks.

PART 3: Why is the traffic served over HTTPS - to ensure the confidentiality and integrity of data transmitted between users and the website. HTTPS encrypts the communication, making it secure and protecting sensitive information.

PART 4: What monitoring is used for - It is used to proactively identify issues, troubleshoot problems, and ensure the infrastructure operates optimally. Monitoring clients collect metrics, logs, and events from servers.

PART 5: Monitoring tool data collection - Monitoring clients collect data such as CPU usage, memory usage, disk space, network traffic, application logs, and error messages. They send this data to the monitoring service over secure connections (e.g., HTTPS).

PART 6: Monitoring Web Server QPS - To monitor web server QPS, you can set up custom metrics in the monitoring service. These metrics track the number of HTTP requests per second each web server is handling. Alerts can be configured to notify administrators if QPS exceeds predefined thresholds.

PART 7: Issues with the Infrastructure
i. SSL Termination at the Load Balancer Level - While terminating SSL at the load balancer level improves performance, it exposes the internal traffic between the load balancer and web servers to potential security risks. Implementing encryption for this internal traffic (e.g., VPN or private network) can mitigate this issue.
ii. Single MySQL Server for Writes - Having only one MySQL server capable of accepting writes creates a single point of failure for write operations. Implementing master-slave replication or multi-master configurations is advisable for data redundancy and high availability.
iii. Uniform Server Components - Servers with all the same components (database, web server, and application server) can be problematic because a failure affecting one server component (e.g., a database crash) can affect all servers. Diversifying components or roles can enhance fault tolerance.
