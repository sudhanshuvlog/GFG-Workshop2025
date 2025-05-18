# GFG-Workshop2025
Data For GFG Workshop 2025


# DevOps

## Traditional vs DevOps

### Traditional
In the traditional software development lifecycle, the process is segmented between two distinct teams:

- **Development Team**:
    - Gathers business requirements
    - Develops the application code
    - Stores the code in a centralized repository (e.g., GitHub)
    - Notifies the Operations team upon completion

- **Operations Team**:
    - Retrieves the code from the centralized repository
    - Performs manual testing
    - Deploys the application to the server

### Key Characteristics of the Traditional Approach:
- Separation of roles: Development and Operations teams function independently, leading to potential communication gaps and slower workflows.
- Development Team: Focused solely on coding, with little involvement in deployment or operational concerns.
- Operations Team: Responsible for ensuring the application is tested and deployed, often involving manual processes.

### How Does the Traditional Model Work?
The development team completes the coding phase and stores the code in a central repository. Once finished, they inform the operations team (usually via email or another non-automated method). The operations team then downloads the code, manually tests it, and handles deployment to the server. This siloed structure often results in delays, miscommunications, and inefficiencies, as the two teams work in isolation from one another.

### Disadvantages of the Traditional Approach

- Manual processes: Tasks like testing and deployment are labor-intensive, which increases the time required to complete each phase.
- Higher risk of errors: The reliance on manual intervention makes the process prone to human errors, which can affect the quality and reliability of the application.
- Extended Time to Market (TTM): The slower, segmented workflow makes it difficult to quickly release new features or updates, making the model less suitable for companies needing agility and rapid growth.

### DevOps

- DevOps Team:
    - Gathers business requirements
    - Develops application code
    - Stores code in GitHub
    - Automates testing
    - Deploys the application to the serve

- Integrated Approach:
    DevOps merges development and operations into a unified team responsible for both application development and deployment.

#### How DevOps Works?

DevOps is a methodology that fosters collaboration between development and operations, allowing the team to develop, test, and deploy applications faster and with fewer bugs. By automating various processes, such as testing and deployment, DevOps ensures a streamlined workflow, reducing bottlenecks and improving efficiency.

#### Advantages of DevOps

- Automated Processes: Automation reduces the time spent on manual tasks.
- Fewer Errors: Automation minimizes the risk of human error, improving application reliability.
- Faster Time to Market (TTM): DevOps accelerates development and deployment, making it ideal for fast-paced, growing companies.

#### Popular DevOps Tools

- Git: Version control system for tracking code changes.
- Jenkins: Continuous integration tool for automating code build, testing, and deployment.
- Docker: Containerization tool for packaging and deploying applications in isolated environments.
- Kubernetes: Orchestration tool for managing and scaling containerized applications.
- Ansible: Configuration management tool for automating setup and configuration tasks.
- Terraform: Infrastructure-as-code tool for automating infrastructure provisioning.
- Monitoring Tools: Tools like Grafana, Prometheus, and Nagios for monitoring applications and infrastructure.

---

## Cloud Computing

- Cloud computing is the delivery of computing services such as servers, storage, databases, networking, software, and analytics over the internet (“the cloud”). It enables organizations to access and use IT resources on-demand, rather than owning and maintaining physical hardware and infrastructure.

- Cloud computing offers several advantages, including scalability, cost-efficiency, flexibility, and reliability. Depending on the deployment model, cloud services can be categorized into Public Cloud, Private Cloud, or Hybrid Cloud, and compared with On-Premises solutions.

## Public Cloud

- A Public Cloud is a cloud infrastructure that is hosted and managed by third-party cloud providers like Amazon Web Services (AWS), Microsoft Azure, or Google Cloud Platform (GCP). In a public cloud model, resources such as virtual machines, storage, and applications are made available over the internet to multiple customers on a shared basis.

- Key Characteristics:

    - Cost-effective: You pay for the resources you use, and there's no need to maintain your own infrastructure.
    - Scalability: Public clouds offer virtually unlimited scalability to meet growing demand.
    - Managed by the provider: Cloud providers handle the maintenance, security, and updates of the infrastructure.
    - Multi-tenancy: Resources are shared across multiple users, though isolation is maintained at the data level.

- Examples:
    - Amazon Web Services (AWS)
    - Microsoft Azure
    - Google Cloud Platform (GCP)

- Use Cases:
    - Startups and companies that need rapid scaling
    - Development and testing environments
    - Websites and web apps with fluctuating traffic

## Private Cloud

- A Private Cloud is a cloud environment that is exclusively used by a single organization. The infrastructure is either hosted on-premises or managed by a third-party provider, but the services and resources are dedicated solely to one company, offering enhanced control and security.

- Key Characteristics:

    - Exclusive use: The cloud infrastructure is used solely by a single organization.
    - Customizable: Private clouds can be tailored to meet specific security, compliance, and performance requirements.
    - Enhanced security: Offers more control over data, as all resources are isolated from other organizations.
    - May be on-premises or hosted: Private clouds can be physically hosted at an organization’s own data center or by a third-party provider.

- Examples:

    - VMware Private Cloud
    - IBM Cloud Private
    - OpenStack Private Cloud

- Use Cases:

    - Large enterprises with strict regulatory requirements
    - Organizations that need full control over their data and infrastructure
    - Companies handling sensitive information (e.g., healthcare, finance)

## On-Premises

- On-Premises refers to the traditional IT infrastructure where all hardware, software, and networking resources are owned, managed, and operated by an organization within its own physical facilities or data centers. Unlike cloud computing, on-premises solutions do not leverage external cloud services.

- Key Characteristics:

    - Full control: The organization has complete ownership and control over the entire infrastructure.
    - Self-managed: All hardware, software, and maintenance are managed in-house, requiring IT expertise and resources.
    - Higher upfront cost: On-premises setups typically involve significant initial investments in hardware, software licenses, and data center facilities.
    - Customization: Organizations can fully customize the infrastructure to meet specific performance, compliance, and security requirements.

- Examples:
    
    - Company-owned data centers
    - On-site servers for enterprise applications like SAP or Oracle
    - Traditional network and storage solutions

- Use Cases:

    - Organizations with specific compliance or data sovereignty needs
    - Companies with legacy applications not easily moved to the cloud
    - Environments requiring low latency and direct access to hardware

## Cloud Service Models: IaaS, PaaS, and SaaS

## Infrastructure as a Service (IaaS)

- IaaS provides the most fundamental building blocks for cloud IT. With IaaS, you rent computing infrastructure—such as virtual machines, storage, and networking—over the internet. It offers the highest level of flexibility and control over IT resources.

- Key Features of IaaS:

    - Virtual Machines: You can create and configure virtual machines as needed.
    - Networking: You get access to customizable networks, firewalls, and load balancers.
    - Storage: You can use different storage types, including block, object, and file storage.
    - Scalability: You can scale the infrastructure up or down as needed.
    - Self-Service: You have full control to manage and operate the infrastructure.

- Use Cases of IaaS:

    - Website Hosting: Hosting websites or web applications.
    - Development and Testing: Provision environments for developing and testing applications.
    - Big Data Analysis: Run large data analysis workloads.
    - Backup and Recovery: Provide backup, recovery, and disaster recovery solutions.

- Examples of IaaS Providers:

    - Amazon Web Services (AWS) EC2
    - Microsoft Azure Virtual Machines
    - Google Cloud Platform Compute Engine

- IaaS Responsibility Model:
    - Customer manages: Applications, data, runtime, middleware, and operating system.
    - Cloud provider manages: Virtualization, servers, storage, and networking.

## Platform as a Service (PaaS)

- PaaS provides a platform that allows developers to build, test, and deploy applications without managing the underlying infrastructure. The cloud provider takes care of the operating system, middleware, runtime, and even some development tools.

- Key Features of PaaS:

    - Development Frameworks: Provides frameworks and tools for developers to build applications (e.g., Java, .NET, Python).
    - Database Management: Includes managed database services (SQL or NoSQL databases).
    - Middleware: Handles integration with messaging services, API management, etc.
    - Application Hosting: Automates the deployment and scaling of web applications.

- Use Cases of PaaS:

    - Application Development: Quickly build and deploy web applications.
    - API Development: Develop and host APIs without worrying about infrastructure.
    - Mobile App Development: Create backends for mobile apps.
    - DevOps: Continuous integration and delivery (CI/CD) environments for testing and deploying applications.

- Examples of PaaS Providers:

    - Google App Engine (GAE)
    - Microsoft Azure App Services
    - Heroku
    - AWS Elastic Beanstalk

- PaaS Responsibility Model:

    - Customer manages: Applications and data.
    - Cloud provider manages: Runtime, middleware, operating system, servers, storage, and networking.

## Software as a Service (SaaS)

- SaaS delivers software applications over the internet on a subscription basis. SaaS applications are fully managed by the cloud provider, so users don’t need to worry about underlying infrastructure, maintenance, or updates.

- Key Features of SaaS:

    - Web-Based Access: Access software applications via a web browser.
    - Managed Hosting: The provider handles all aspects of hosting and maintaining the software.
    - Subscription-Based: Pay on a subscription basis, typically monthly or annually.
    - Automatic Updates: The service provider handles all software updates and patches.

- Use Cases of SaaS:
    - Email Services: Business email platforms like Gmail and Microsoft Outlook.
    - Collaboration Tools: Tools like Microsoft Teams, Slack, and Google Workspace.
    - CRM Systems: Customer relationship management platforms like Salesforce.
    - Office Applications: Microsoft Office 365, Google Docs.

- Examples of SaaS Providers:

    - Google Workspace (Gmail, Docs, Drive)
    - Microsoft Office 365
    - Salesforce
    - Dropbox

- SaaS Responsibility Model:
    - Cloud provider manages everything, including the application, runtime, middleware, operating system, servers, storage, and networking.

## Virtualization

- Virtualization is a technology that allows a single physical machine (server, desktop, etc.) to run multiple virtual environments, called virtual machines (VMs). Each VM operates as if it were a separate computer with its own operating system (OS), applications, and resources, but in reality, they all share the same underlying hardware.

- Virtualization is achieved through software known as a hypervisor. The hypervisor is responsible for abstracting and allocating the physical resources (CPU, memory, storage) of the host machine to each virtual machine. This enables efficient use of hardware by allowing multiple VMs to run on the same physical machine simultaneously.

- Key Types of Virtualization:

    - Server Virtualization: Allows multiple server instances to run on one physical server.
      Example: VMware, Hyper-V, KVM.

    - Desktop Virtualization: Provides virtual desktops where multiple users can access separate desktop environments on a single machine.
    Example: Citrix, VirtualBox.

    - Storage Virtualization: Pools physical storage from multiple devices into what appears to be a single storage device.
    Example: SAN (Storage Area Network).

    - Network Virtualization: Abstracts physical network resources to create multiple virtual networks on a single physical network infrastructure.
    Example: Software-Defined Networking (SDN).

## How Virtualization Works

- Physical Machine: The hardware (CPU, RAM, storage) on which multiple virtual machines are deployed.
- Hypervisor: A layer of software that sits between the hardware and the virtual machines, responsible for  managing and allocating hardware resources to VMs. There are two types of hypervisors:
    - Type 1 Hypervisor (Bare Metal): Runs directly on the hardware. Examples: VMware ESXi, Microsoft Hyper-V.
    - Type 2 Hypervisor (Hosted): Runs on top of an existing operating system. Examples: VirtualBox, VMware Workstation.
- Virtual Machines: Each VM runs its own OS and applications independently of others. All VMs share the physical hardware but are isolated from each other.

- Advantages of Virtualization
    - Resource Efficiency: Virtualization maximizes the utilization of physical hardware, allowing multiple systems to share resources efficiently.
    - Cost Savings: Organizations can run multiple virtual servers or desktops on fewer physical machines, reducing hardware costs and energy consumption.
    - Flexibility and Scalability: Virtual machines can be easily created, modified, or deleted, providing greater flexibility to scale infrastructure as needed.
    - Isolation: Each VM is isolated from others, which means that if one VM crashes, the others remain unaffected.
    - Disaster Recovery: Virtual machines can be backed up and migrated easily, simplifying disaster recovery and failover strategies.

## How Virtualization Gave Birth to Cloud Computing

- Cloud computing builds upon the concept of virtualization. Virtualization is the foundation that makes cloud computing possible by enabling resource sharing, abstraction, and flexible scaling. Here’s how virtualization paved the way for cloud computing:

1. Efficient Resource Utilization:
Before virtualization, servers were typically underutilized, running one application per machine, leading to significant waste of computing power. Virtualization allowed multiple applications to run on the same hardware, maximizing efficiency. This same principle is extended in cloud computing, where cloud providers can pool and allocate resources dynamically across multiple clients.

2. On-Demand Resource Allocation:
Virtualization enables on-demand provisioning of virtual machines and resources. This dynamic allocation of resources is one of the core principles of cloud computing, where users can request compute, storage, and network resources whenever needed, without having to own the physical infrastructure.

3. Scalability and Elasticity:
Virtual machines can be easily scaled up (more resources) or down (fewer resources) based on demand. Cloud computing takes this to the next level by offering elasticity, where resources are automatically adjusted in real-time according to the needs of an application. This is possible because virtualization allows the underlying infrastructure to be flexible and adaptable.

4. Abstraction of Physical Hardware:
Virtualization abstracts the physical hardware from the software running on it, which is central to cloud computing. Cloud users do not need to know or manage the physical hardware their applications are running on. The cloud provider uses virtualization to abstract and allocate resources transparently.

5. Multi-Tenancy:
Virtualization allows multiple virtual machines (and by extension, multiple users) to share the same physical hardware without interference. This ability to host multiple clients on shared infrastructure is a cornerstone of public cloud services, where cloud providers can serve many customers using shared hardware, while keeping their environments isolated.

6. Disaster Recovery and Backup:
Virtualization enables easy backup and migration of virtual machines, simplifying disaster recovery. Cloud providers leverage this feature to offer high availability, redundancy, and failover capabilities without the need for users to manage complex recovery infrastructure.

7. Cost Savings via Pay-as-You-Go:
Virtualization reduced the cost of hardware, and cloud computing extended this by allowing users to pay only for the resources they consume. Cloud providers can offer this model because virtualization makes it easy to allocate and track resource usage, enabling the pay-as-you-go pricing that defines cloud services.

## Evolution: From Virtualization to Cloud Computing

- Data Centers: Virtualization started within data centers, where organizations used it to consolidate hardware and reduce costs. They could run multiple applications on fewer machines.

- Cloud Service Providers: Public cloud providers (AWS, Azure, Google Cloud) built upon virtualization technology to offer cloud services, where organizations no longer need to manage their own physical hardware. They can rent computing resources on-demand.

- Infrastructure as a Service (IaaS): Virtualization enabled the Infrastructure as a Service (IaaS) model, where users can rent virtual machines, storage, and networks over the internet. Virtual machines in the cloud are essentially the same as those created with local virtualization, but now they can be accessed remotely and scaled dynamically.

## Git

### What is Git?

Git is a version control system that tracks changes in your code, allowing you to manage and collaborate on software projects more effectively.

### Why Git?

Git is essential for storing code, tracking changes, and enabling collaboration between multiple developers in a project.

---

## Linux

### What is Linux OS?

Linux is a free, open-source operating system known for its security, flexibility, and stability. It is widely used on servers, desktops, and mobile devices.

### Basic Linux Commands

- **pwd**: Prints the current working directory.
- **ls**: Lists files and directories.
- **cd**: Changes the directory.
- **mkdir**: Creates a directory.
- **touch**: Creates a file.
- **cat**: Prints the content of a file.
- **id**: Prints user and group IDs.

### Linux File System

All files and directories in Linux are organized under the root directory (/), which forms the base of the entire file system hierarchy.

### How to Install Linux OS (Any Distribution)?

1. **Bare Metal**: Install Linux OS directly on the hardware.
2. **Virtualization**: Install Linux OS on a virtual machine using tools like VirtualBox or Hyper-V.
3. **Cloud**: Install Linux OS on the cloud using providers like AWS, Azure, or GCP.
4. **Container**: Install Linux OS on containers using tools like Docker or Kubernetes.

### Hosting Apache HTTPD Web Server on Redhat Linux OS

- Use the below command to install Apache web server on Linux OS:
```
yum install -y httpd
```

- Use the below Command to edit the index.html file:
```
cat > /var/www/html/index.html #And then add the html content
```

- Use the below command to start the Apache web server:
```
systemctl start httpd
```

- Use the below command to stop the Apache web server:
```
systemctl stop httpd
```
