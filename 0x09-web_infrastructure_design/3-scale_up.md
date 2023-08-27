Justification For Additional Components
Web Server - The web server serves static and dynamic web content to users, such as HTML, CSS, JavaScript, and images. It's essential for handling HTTP requests and generating web pages.

Application Server: The application server hosts the core logic of your web application. It processes user requests, executes business logic, and communicates with the database. Separating it from the web server allows for better resource allocation and scaling.

Database Server: The database server is where your website's data is stored, such as user accounts, content, and configurations. Hosting it on a dedicated server improves data security, scalability, and performance.

Load Balancer (HAproxy): The load balancer is added to distribute incoming traffic across multiple web and application servers. It ensures high availability, scalability, and efficient use of server resources.
