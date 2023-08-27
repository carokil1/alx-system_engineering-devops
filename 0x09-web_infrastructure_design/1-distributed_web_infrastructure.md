You must be able to explain some specifics about this infrastructure:
Server 1 (Load Balancer):
HAProxy Load Balance

Server 2 (Active Node):
Nginx Web Server
Application Server
MySQL Database (Primary)

Server 3 (Passive Node):
Nginx Web Server
Application Server
MySQL Database (Replica)

For every additional element, why you are adding it
Load Balancer (HAProxy): Added to distribute incoming traffic across Server 2 and Server 3 to ensure high availability.
Database (Primary-Replica): Added to provide data redundancy and fault tolerance. Primary node handles write operations, and the replica node handles read operations.

Distribution algorithm your load balancer is configured with and how it works
The load balancer (HAProxy) is configured with a Round Robin distribution algorithm. It evenly distributes incoming requests to each server in turns. The algorithm instructs the load balancer to go back to the top of the list and repeats again.

Is our load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between both
The load balancer enables an Active-Passive setup. In an Active-Passive setup, one server (Server 2) actively handles requests (active), while the other server (Server 3) remains passive. The load balancer redirects traffic to the active server and can switch to the passive server in case of failure.An active-active setup involves multiple servers simultaneously handling incoming requests, distributing the load across them. In contrast, an active-passive setup maintains one active server while others remain passive, only becoming active if the primary server fails.

How a database Primary-Replica (Master-Slave) cluster works
in The cluster, the primary node (Server 2) handles write operations, updates, and modifications to the database. The replica node (Server 3) replicates data from the primary node and handles read operations.

What is the difference between the Primary node and the Replica node in regard to the application
The primary node (Server 2) handles write operations,thus  managing data updates and modifications. The replica node (Server 3) handles read operations, making it idealfor serving read-only queries and reducing the load on the primary node.

You must be able to explain what the issues are with this infrastructure:
Where are SPOF
The load balancer (Server 1) is a single point of failure. If it goes down, traffic distribution is compromised.

Security issues (no firewall, no HTTPS)
No Firewall: There's no firewall. A firewall is essential to protect the infrastructure from unauthorized access and attacks.
No HTTPS: HTTPS encryption is not provided. Without HTTPS, data transmitted between users and the server is vulnerable to interception and security breaches.

No monitoring
without monitoring we can't keep track of our  servers' health, resource usage, and potential issues. Diagnosing and resolving problems becomes challenging.
