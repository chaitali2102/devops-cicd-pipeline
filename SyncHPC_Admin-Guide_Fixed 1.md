<div style="display: flex; flex-direction:column">
 <div class="md-header">

# SyncHPC Admin Guide

</div>
<br/>
<!-- <div class="table-content" style="display: flex;
    justify-content: space-between;"> -->
<div class="data-container">

<div class="hide-scrollbar table-of-content">

## Table of Contents

1. [Introduction of SyncHPC](#1-introduction-of-synchpc)
2. [SyncHPC Architecture](#2-synchpc-architecture)
   - 2.1 [SyncHPC Core](#21-synchpc-core)
   - 2.2 [SyncHPC Web](#22-synchpc-web)
   - 2.3 [SyncOps](#23-syncops)
   - 2.4 [Slurm Rest Connector](#24-slurm-rest-connector-synchpcslurm_v7)
3. [Terminology](#3-terminology)
   - 3.1 [Deployment](#31-deployment)
   - 3.2 [Storages](#32-storages)
   - 3.3 [Nodes](#33-nodes)
   - 3.4 [SyncHPC Host Machine](#34-synchpc-host-machine)
   - 3.5 [Head Node](#35-head-node)
   - 3.6 [WorkStore Node](#36-workstore-node)
   - 3.7 [Compute Node](#37-compute-node)
   - 3.8 [Workstation Node](#38-workstation-node)
   - 3.9 [Node Group](#39-node-group)
4. [SyncHPC Installation](#4-synchpc-installation)
   - 4.1 [System Requirements](#41-system-requirements)
   - 4.2 [Installation Steps](#42-installation-steps)
   - 4.3 [Preparing the Environment](#43-preparing-the-environment)
   - 4.4 [Software Installation](#44-software-installation)
   - 4.5 [Configurations](#45-configurations)
   - 4.6 [Post-Installation Steps](#46-post-installation-steps)
5. [Deployment Creation](#4-deployment-creation)
   - 5.1 [Customization of Deployments](#51-customization-of-deployments)
   - 5.2 [Deployment Forms](#52-deployment-forms)
   - 5.3 [Template Pointer](#53-template-pointer)
   - 5.4 [Provider Template](#54-provider-template)
   - 5.5 [Deployment Status & Summary](#55-deployment-status--summary)
   - 5.6 [Deployment Settings](#56-deployment-settings)
6. [Node Configurator](#5-node-configurator)
   - 6.1 [Config Code](#61-config-code)
   - 6.2 [Config Details](#62-config-details)
   - 6.3 [Cloud-based Deployment](#63-cloud-based-deployment)
   - 6.4 [On-Premises Deployment](#64-on-premises-deployment)
7. [Configuration](#6-configuration)
   - 7.1 [Basic Settings](#71-basic-settings)
   - 7.2 [Advanced Settings](#72-advanced-settings)
   - 7.3 [Web Settings](#73-web-settings)
8. [Nodes](#7-nodes)
   - 8.1 [Adding a Node](#81-adding-a-node)
   - 8.2 [Attaching a Node to a Deployment](#82-attaching-a-node-to-a-deployment)
   - 8.3 [Node Operations](#83-node-operations)
   - 8.4 [Customizing Node Columns](#84-customizing-node-columns)
   - 8.5 [Node Activity Logs](#85-node-activity-logs)
9. [Jobs](#8-jobs)
    - 9.1 [Creating a New Job](#91-creating-a-new-job)
    - 9.2 [Job Form Additional Settings](#92-job-form-additional-settings)
    - 9.3 [Job Templates](#93-job-templates)
    - 9.4 [Monitoring Job Output](#94-monitoring-job-output)
    - 9.5 [Monitoring Specific Jobs](#95-monitoring-specific-jobs)
    - 9.6 [Job Logs](#96-job-logs)
10. [Storage Management](#9-storage-management)
    - 10.1–11.10 [Storage operations](#101-accessing-storage-system)
11. [User Management](#10-user-management)
12. [Application Management](#11-application-management)
13. [License Management](#12-license-management)
14. [Dashboard Desk](#13-dashboard-desk)
15. [Reports](#14-reports)
16. [SyncHPC Health Service](#15-synchpc-health-service)
17. [Summary of SyncHPC](#16-summary-of-synchpc)
18. [Appendix: Useful Commands](#17-appendix-useful-commands)
---
 </div>

<div class="main-content">

## 1. Introduction of SyncHPC<a id="intro"></a>

SyncHPC is a hybrid High-Performance Computing (HPC) management platform developed by **Syncious Systems Private Limited**, designed for complex computational workloads such as Computer-Aided Engineering (CAE), Computational Fluid Dynamics (CFD), weather forecasting, Electronic Design Automation (EDA). It provides a unified and centralized solution for deploying, managing, and accessing both on-premises and cloud-based HPC resources.

It enables users to keep their data up-to-date and accessible from any device, even in a high-speed computing environment with large amounts of data. The solution includes features such as secure data storage, data synchronization, collaboration tools, and other features designed specifically for the HPC environment. SyncHPC aims to improve productivity and efficiency for HPC users by making it easier to manage, share, and access data from any device.

This guide will walk you through the steps to successfully submit and manage jobs, manage storages, and monitor licenses of applications installed.

### SyncHPC Product Family


| Product | Description |
|---------|-------------|
| **SyncHPC Core** | Core hybrid HPC management platform for CAE/CFD/EDA workloads on cloud and on-premises. |
| **SyncHPC VDI** | Remote visualization platform (SyncVDI) enabling CAD/CAE workloads on public/private cloud and workstation pools. |

### Basic Features


- **Cluster Management:** A centralized interface for managing HPC clusters, including nodes, resources, and workloads.
- **Job Scheduling:** A powerful job scheduler that can manage and prioritize HPC workloads based on user-defined criteria.
- **Resource Management:** Robust resource management allowing administrators to manage and allocate HPC resources such as CPU, memory, and storage.
- **Workload Management:** A tool for managing HPC workloads, including job submission, monitoring, and reporting.
- **User Management:** A user management system that allows administrators to manage user accounts, permissions, and access to HPC resources.
- **Storage Management:** Storage management capabilities allowing administrators to manage the storage needs of HPC workloads.
- **Analytics and Reporting:** Advanced analytics and reporting giving administrators insights into the performance and utilization of HPC resources.
- **Application Support:** A variety of open-source and commercial applications, making it easy to run a wide range of HPC workloads.

### Supported Commercial & Open-Source Applications


SyncHPC supports a wide range of industry-leading HPC applications:

- **CAE/FEA:** ANSYS, Abaqus, LS-DYNA, Altair
- **CFD:** OpenFOAM, Star-CCM+, CONVERGE CFD
- **Specialized:** Weather forecasting tools, Bioinformatics, Seismic Analysis tools, EDA tools

### Supported Infrastructure Providers


- On-premises HPC on various BareMetal servers
- Cloud-Based HPC running on 4 providers:
  - Microsoft Azure
  - Amazon Web Services (AWS)
  - Oracle Cloud Infrastructure (OCI)
  - Google Cloud Platform (GCP)

### Supported Job Schedulers

SyncHPC is a multi-scheduling platform. Currently, it supports:

- Slurm
- Microsoft HPC Pack
- OpenPBS

### Industry Specialties


SyncHPC serves workloads across: Cloud HPC, CAE Simulation, CFD Simulation, VDI, FEA, Weather Forecasting, Bioinformatics, Seismic Analysis, Oil & Gas, Electronic Design Automation.

---

## 2. SyncHPC Architecture


SyncHPC is built on a modular, layered architecture that encompasses front-end interfaces, back-end core services, resource management integrations, monitoring components, and security layers. This design allows SyncHPC to operate seamlessly across on-premises, cloud, and hybrid HPC environments.

![SyncHPC Architecture](/mdFiles/Architecture.png)
</br> *Figure: SyncHPC Architecture — system topology showing VDI Server, HPC Cluster, Cloud HPC & VDI Servers, SyncHPC management node, Pool of Workstations, and end-user connectivity.*


The four primary architectural components are:

- **SyncHPC Core** — The central engine providing core services, plugin frameworks, and REST APIs
- **SyncHPC Web** — The web-based user interface layer
- **SyncOps** — The deployment and provisioning automation engine
- **Slurm Rest Connector** — The bridge between SyncHPC and the Slurm job scheduler

---

### 2.1 SyncHPC Core


SyncHPC Core is the backbone of the SyncHPC platform. It exposes a comprehensive set of **REST APIs** that power all interactions between the web interface, external integrations, and back-end services. The Core module includes:

- **Core Services:** Handles job management, user management, storage operations, application management, license tracking, billing, and health monitoring.
- **Plugin Frameworks:** Extensible plugin architecture that allows integration with cloud providers, HPC schedulers, authentication systems, and monitoring tools.
- **REST API Layer:** All platform functionality is exposed via REST APIs.

SyncHPC Core runs on the **SyncHPC Host Machine** and communicates with head nodes and cloud provider APIs to orchestrate HPC workloads across deployments.

---

### 2.2 SyncHPC Web


SyncHPC Web is the browser-based graphical user interface (GUI) for the SyncHPC platform. It provides administrators and end users with a unified dashboard to:

- Submit, monitor, and manage HPC jobs
- Manage storage resources and file transfers
- Configure and monitor deployments (on-premises and cloud)
- Manage users, roles, and access controls
- View analytics, reports, and system health

SyncHPC Web communicates exclusively with the SyncHPC Core REST APIs, ensuring a clean separation between the presentation layer and business logic.

---

### 2.3 SyncOps


SyncOps is the deployment automation engine within the SyncHPC platform. It is responsible for triggering and managing the provisioning of HPC infrastructure across cloud and on-premises environments.

**Template Hosting:** SyncOps hosts deployment provider templates at:

```
/opt/synchpchost/provider-templates
```

**Supported Template Types:**

| Template Type | Description |
|---------------|-------------|
| **Azure** | ARM templates for provisioning Azure-based HPC infrastructure |
| **Terraform** | Infrastructure-as-Code templates for multi-cloud deployments |
| **Ansible** | Configuration management playbooks for node setup and software installation |
| **Python** | Custom Python scripts for specialized provisioning workflows |

**Input Configuration:** SyncOps accepts deployment parameters via a JSON file, which defines the infrastructure specifications, resource counts, and configuration options for the deployment. Example structure:

```json
{
  "deployment_name": "my-hpc-cluster",
  "provider": "azure",
  "region": "eastus",
  "head_node": {
    "vm_size": "Standard_D8s_v3",
    "os": "CentOS 7"
  },
  "compute_nodes": {
    "count": 4,
    "vm_size": "Standard_HC44rs"
  }
}
```

---

### 2.4 Slurm Rest Connector (SyncHpcSlurm_v7)


The **Slurm Rest Connector** (internally referred to as `SyncHpcSlurm_v7`) is a lightweight REST server that runs on the **head node** of an HPC deployment. It acts as the communication bridge between SyncHPC Core and the Slurm Workload Manager, translating SyncHPC API calls into native Slurm commands and events.

**Location on Head Node:**

```
/opt/synchpc/SyncHPCSlurm_v7
```

**Key Responsibilities:**

- Receiving job submission requests from SyncHPC Core and forwarding them to Slurm (`sbatch`)
- Streaming real-time job status updates (PENDING, RUNNING, COMPLETED, FAILED) back to SyncHPC Core
- Reporting node availability and resource utilization from Slurm to the SyncHPC dashboard
- Handling job cancellation and priority adjustment requests

The Slurm Rest Connector must be running at all times on the head node for SyncHPC to manage jobs on a Slurm-based deployment. It is typically configured as a system service to ensure automatic startup and restart on failure.

---

## 3. Terminology


The key terminologies used in SyncHPC are as follows:

- Deployment
- SyncStore
- Workstore
- Nodes
- Head Node
- Workstore / Compute Node

### 3.1 Deployment

In SyncHPC, a deployment refers to a group of computation and storage resources deployed for managing a single HPC cluster. There is a one-to-one relationship between an HPC cluster and a deployment, meaning each HPC cluster is associated with a single deployment in SyncHPC.

This structure allows SyncHPC to manage HPC resources in a centralized and consistent manner, ensuring that each cluster is managed and optimized according to the same set of policies and procedures.

### 3.2 Storages

SyncHPC standardly configures two types of storages:

- **A. SyncStore**
- **B. Workstore**

As SyncHPC is pluggable, `local scratch storage` can also be configured. This is mounted on each node and is the fastest storage available to a job while running.

#### A. SyncStore

SyncStore is a persistent storage solution for users' input and output data in SyncHPC. It serves as a staging area for users' jobs, where they can store data before and after processing. For cloud-based deployments, SyncStore can be an inexpensive object storage.

SyncStore mounting points:

| Platform     | Mount Point        |
|--------------|--------------------|
| Linux node   | `/mnt/syncstore`   |
| Windows node | Drive `S:`         |

#### B. Workstore

The Workstore is a temporary storage solution used by HPC computation machines to run computation jobs. Unlike SyncStore, users cannot directly upload data to the Workstore — data is transferred by the master node as part of the job scheduling process.

The Workstore is designed for fast performance with high IOPS (Input/Output Operations Per Second). Data stored in the Workstore is deleted after the job completes and is then copied to SyncStore for long-term storage.

Workstore mounting points:

| Platform     | Mount Point        |
|--------------|--------------------|
| Linux node   | `/mnt/workstore`   |
| Windows node | Drive `W:`         |

### 3.3 Nodes

In SyncHPC, different types of nodes perform specific roles in the management of HPC clusters. This approach allows organizations to take advantage of the strengths of different nodes and optimize their HPC infrastructure for performance, reliability, and cost-effectiveness.

### 3.4 SyncHPC Host Machine

The host machine of SyncHPC is a separate machine that runs all the components of the SyncHPC software. By running on a separate host machine, SyncHPC can manage and synchronize multiple HPC clusters from a central location, providing a centralized and streamlined approach to HPC management.

### 3.5 Head Node

The head node (also known as the master node) is a central management node that acts as the hub for the computing cluster. It is responsible for coordinating the activities of the compute nodes and scheduling jobs for execution. The head node typically runs a tasks handler which assigns tasks to compute nodes, monitors the status of ongoing tasks, and manages the allocation of resources.

> **Note:** If the head node is not running, the computing cluster cannot function properly, and users will not be able to submit or execute any jobs.

### 3.6 WorkStore Node

A WorkStore node is a dedicated machine responsible for hosting the Workstore storage, which serves as a shared storage resource for computing nodes within an HPC cluster. The WorkStore node ensures fast and reliable access to Workstore storage.

- The head node can serve as a WorkStore node by exporting its storage partition as NFS storage.
- Third-party storage appliances offering NFS or Parallel File System (PFS) storage can also function as Workstore.
- In cloud environments, Workstore can be provided as a cloud service offering shared NFS or PFS storage.

> **Note:** Workstore should remain accessible as long as jobs are running.

### 3.7 Compute Node

In a computing cluster, a compute node serves as a single computer functioning as a worker within a distributed computing environment. These nodes execute parallel processing tasks and can be aggregated to create a more robust computing system.

The quantity of compute nodes needed for a job depends on the task's magnitude and complexity. Augmenting the number of compute nodes enhances the system's overall processing capability.

### 3.8 Workstation Node

Workstation nodes in a computing cluster can be used as **Virtual Desktop Infrastructure (VDI)** machines, allowing users to access a virtual desktop environment with a **graphical user interface (GUI)** for visualization activities.

These workstation nodes are equipped with high-end graphics cards to provide improved visualization performance compared to traditional compute nodes. The use of **VDI** enables users to access their virtual desktops from any location with an internet connection.



---

### 3.9 Node Group


A **Node Group** is a logical grouping of compute nodes within a deployment. Node groups allow administrators to organize nodes by hardware type, priority, or purpose, and control which users or roles can submit jobs to specific node groups.

Key uses of Node Groups:
- Assign specific hardware (e.g., GPU nodes, high-memory nodes) to dedicated user groups
- Set separate scheduling policies per group
- Control access so that only authorized users can submit to high-priority or licensed-node groups
- SyncHPC supports automatic Node Group assignment from the Slurm scheduler (controlled via the **Get NodeGroup Of Nodes From Scheduler** setting)

---

## 4. SyncHPC Installation


> 📖 **Full Installation Guide:** For a complete step-by-step installation walkthrough, refer to the **[SyncHPC Installation Guide](Installation_Guide.md)** or visit [syncious.com/documentation.html](https://www.syncious.com/documentation.html#5-synchpc-installation).
SyncHPC is a web-based application accessible through a web browser. Supported browsers include Google Chrome, Microsoft Edge, and Firefox. **Google Chrome is recommended** for best compatibility, stability, and security.

---

## 5. Deployment Creation

![Deploy HPC — Cloud Provider Selection](/mdFiles/Deploy_Hpc.png)
</br> *Figure: Cloud provider selection — choose from AWS, Microsoft Azure, On-Premise, Google Cloud Platform, or Oracle Cloud Infrastructure.*



Log in through the "Global Admin" user and create a new deployment by going to the Deployments module. Admins can create deployments based on whether the cluster is On-Premises or cloud-based.

> **Before deploying:** Add pre-defined configurations for your Head Node and Compute Nodes in **Node Configuration**. The deployment process uses these node configurations when creating the cluster.

### 5.1 Customization of Deployments

If the admin wants to customize deployment automation, they should understand two aspects:

- Deployment Forms
- Provider Templates

### 5.2 Deployment Forms

![Deployment Form Templates](/mdFiles/Deployment Forms.png)
*Figure: Cloud provider template files available in `/opt/synchpchost/wwwroot/SyncHpcScripts/CloudTemplates/`.*


Deployment forms are GUI elements in SyncHPC. They can be edited or changed using simple JSON files stored on the SyncHPC host at:

```
/opt/synchpchost/wwwroot/SyncHpcScripts/CloudTemplates
```

Every supported Infra Provider should be listed in:

```
/opt/synchpchost/wwwroot/SyncHpcScripts/CloudTemplates/CloudProviders.json
```

For example:

```json
{
  "name": "Microsoft Azure",
  "index": "1",
  "providerJson": "MicrosoftAzure.json",
  "parameterFile": "AzureParameters.json"
}
```

For every Infra Provider, there are two files for form customization:

- **ProviderJson:** Used to build the input form.
- **ParameterFile:** Used to provide the types of parameters used in the form.

### 5.3 Template Pointer

The `ProviderJson` file consists of an element called the **template pointer**. This pointer is the entry point for running the provider template associated with the form.

### 5.4 Provider Template

All provider templates are kept at:

```
/opt/synchpchost/provider-templates
```

SyncOps is pluggable software where all supported Infra Providers write their plugin in Python. It can trigger any type of automation code in `/opt/synchpchost/provider-templates`. The template pointer mentioned in section 5.3 is used as an entry point in provider templates.


### 5.5 Deployment Status & Summary


While the deployment process is running, click **"Check Status"** to monitor the progress. Admin can also perform the delete action during this phase. After you see **"Installation Successful"**, the active status will be shown on the deployment page. Click on the deployment to view the **Summary** of the cluster.

![Deployment Summary](/mdFiles/Deployment_Detail.png)
</br> *Figure: Deployment Summary Dashboard — provides a consolidated view of the cluster status.*

The summary page provides information about the cluster including:

<table>
  <thead>
    <tr>
      <th style="min-width: 300px; text-align: left;">Metric</th>
      <th style="min-width: 720px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>SyncHPC License Availability</strong></td>
      <td>Shows whether the platform license is active.</td>
    </tr>
    <tr>
      <td><strong>No. of Compute Nodes</strong></td>
      <td>Total number of compute nodes in the deployment.</td>
    </tr>
    <tr>
      <td><strong>Total Jobs</strong></td>
      <td>Total number of jobs submitted to date.</td>
    </tr>
    <tr>
      <td><strong>Consumption of SyncHPC Units</strong></td>
      <td>Billing units consumed by the deployment.</td>
    </tr>
    <tr>
      <td><strong>Number of Applications Installed</strong></td>
      <td>Applications configured and available for job submission.</td>
    </tr>
  </tbody>
</table>

From the summary page, admins can explore each tab (Nodes, Jobs, Storage, Applications, etc.) for a full operational view of the cluster.


### 5.6 Deployment Settings

Each deployment has its own settings page, accessible via **Configurator → Deployment → [Deployment Name] → Settings**. These per-deployment settings control job behaviour, storage paths, licensing, network, VDI sessions, and SyncHPC billing — independently of the global SyncHPC Settings.

![Deployment Settings — Jobs, Session & Storage](/mdFiles/Dep_setting1.png)
</br> *Figure: Deployment Settings — Deployment options (RDMA, power scripts), Job data copy behaviour, Session (HTTPS/RDP/VNC), SSH, and Storage alert thresholds.*

Key per-deployment settings include:

| Setting | Description |
|---------|-------------|
| **Copy Job Data To Syncstore** | Automatically copies job output back to SyncStore after completion |
| **Keep Job Data In Workstore** | Retains job working files in Workstore after the job finishes |
| **Node Groups** | Comma-separated list of Slurm partitions available in this deployment |
| **Use Scheduler For JobInit** | Delegates job initialisation to the Slurm scheduler |
| **SyncHPC License Check** | Enables license validation before job submission |
| **Use Public IP For SyncHPC** | Routes SyncHPC communication via the node's public IP |
| **Show HN Core Hours** | Displays head-node core hours in usage reports |
| **Syncstore Path / Workstore Path** | Override default storage mount paths for this deployment |
| **Deduct Wallet Balance** | Enables per-job billing deduction from the user's wallet |
| **Allotted Core Hours Per Month** | Monthly core-hour quota per deployment |

---

## 6. Node Configurator

![Node Configuration](/mdFiles/Node _Config.png)
</br> *Figure: Node Configurator — list of configured node profiles with CPU, memory, GPU, and infrastructure provider details.*


Add the node configurator for your head node and compute nodes (separate entries for both). This is the **first task** before proceeding with deployment.

### 6.1 Config Code

The configuration code is used during deployment to reference the node configuration. There should be a minimum of two configurations: one for the head node and one for the compute nodes. Different config codes must be used for each.

### 6.2 Config Details

#### CPU

- Cores per Node
- CPU Type (Intel or AMD)
- Number of Sockets
- Cores Per Socket
- Threads Per Core

#### Memory and Storage

- RAM Size
- Storage Size
- Storage Type

#### Infrastructure Provider

Select from: Google Cloud, AWS (Amazon Web Services), Oracle Cloud, Azure, On-Premises.

#### GPU Details

- Number of GPUs
- GPU Memory Size
- GPU Mode

#### RDMA (Remote Direct Memory Access)

- Enable or Disable

> Define configurations separately for both the head node and compute nodes if they have different configurations.

### 6.3 Cloud-based Deployment

- **Option 1:** Cloud service provider (e.g., AWS, Azure, GCP)
- **Option 2:** Cloud-hosted virtual machines


The following screenshots show the Azure deployment form steps:

![Azure Deployment Form - Step 1](/mdFiles/Azure_Deployment_Form1.png)
 
![Azure Deployment Form - Step 2](/mdFiles/Azure_Deployment_Form2.png)

![Azure Deployment Form - Step 3](/mdFiles/Azure_Deployment_Form3.png)

![Azure Deployment Form - Step 4](/mdFiles/Azure_Deployment_Form4.png)

![Azure Deployment Form - Step 5](/mdFiles/Azure_Deployment_Form5.png)

### 6.4 On-Premises Deployment

- **Option 1:** Deploy on your organization's servers or data center
- **Option 2:** Deploy on local physical machines or virtualized environment

---


The following screenshots show the on-premises deployment form steps:

![On-Premises Deployment Form - Step 1](/mdFiles/On-prem_Deployment_form1.png)

![On-Premises Deployment Form - Step 2](/mdFiles/On-prem_Deployment_form2.png)

![On-Premises Deployment Form - Step 3](/mdFiles/On-prem_Deployment_form3.png)

![On-Premises Deployment Form - Step 4](/mdFiles/On-prem_Deployment_form4.png)

![On-Premises Deployment Form - Step 5](/mdFiles/On-prem_Deployment_form5.png)

---
## 7. Configuration

![SyncHPC Settings Page](/mdFiles/SyncHpcSetting.png)
</br> *Figure: SyncHPC Settings page — three expandable panels: Basic Settings, Advanced Settings, and Web Settings.*



In SyncHPC, there are two major configuration settings:

- **Global SyncHPC Settings** — Changes made here apply to all deployments present in the setup.
- **Deployment Settings** — Changes apply only to the respective deployment. Each deployment has its own configuration module.

As a Global Admin, the **Settings Module** (`Configurator → SyncHPC Settings`) lets you configure the entire platform. Settings are organized into three expandable panels:

<table>
  <thead>
    <tr>
      <th style="min-width: 300px; text-align: left;">Panel</th>
      <th style="min-width: 720px; text-align: left;">Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Basic Settings</strong></td>
      <td>Core authentication, user, VDI, email, and session configuration.</td>
    </tr>
    <tr>
      <td><strong>Advanced Settings</strong></td>
      <td>Job behavior, node control, triggers (cron), license, reports, and repository.</td>
    </tr>
    <tr>
      <td><strong>Web Settings</strong></td>
      <td>UI appearance, download links, integration URLs, and portal behavior.</td>
    </tr>
  </tbody>
</table>

> **Note:** Changes take effect immediately after clicking **Save**. Some settings (e.g., Authentication Type, Database Type) require a service restart to apply.

---

### 7.1 Basic Settings
The following screenshots show the live SyncHPC Basic Settings panel:

![Basic Settings — Authentication, Configuration & Others](/mdFiles/synchpc_setting1.png)
</br> *Figure: Basic Settings — Authentication type, Database type, and key server settings.*


<h4>Authentication</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Authentication Type</td>
      <td><code>0</code></td>
      <td>Login method: <code>0</code> = SyncHPC API, <code>1</code> = Local AD, <code>2</code> = Azure AD, <code>3</code> = Okta, <code>4</code> = OpenId</td>
    </tr>
    <tr>
      <td>Add User To Identity Server</td>
      <td><code>True</code></td>
      <td>Auto-register new users in the Identity Server</td>
    </tr>
    <tr>
      <td>Login Duration</td>
      <td><code>1440</code></td>
      <td>Session timeout in minutes (24 hrs)</td>
    </tr>
    <tr>
      <td>Parallel Logins</td>
      <td><code>10</code></td>
      <td>Max simultaneous sessions per user</td>
    </tr>
    <tr>
      <td>User Inactivity Logout</td>
      <td><code>30</code></td>
      <td>Auto-logout after inactivity (minutes)</td>
    </tr>
    <tr>
      <td>Use Third Party Expiration Time</td>
      <td><code>True</code></td>
      <td>Use IDP token expiry instead of internal timeout</td>
    </tr>
    <tr>
      <td>Use Sliding Expiration For Cookie</td>
      <td><code>False</code></td>
      <td>Extend cookie on each request (keeps active users logged in)</td>
    </tr>
    <tr>
      <td>SAML Valid Issuer</td>
      <td><code>N/A</code></td>
      <td>Okta Entity ID (for Okta/SAML auth)</td>
    </tr>
    <tr>
      <td>SAML Valid Audience</td>
      <td><code>N/A</code></td>
      <td>Audience restriction from Okta SAML app</td>
    </tr>
  </tbody>
</table> </br>

<h4>Configuration (Database)</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Database Type</td>
      <td><code>MSSQL</code></td>
      <td>Backend database — must match installation config</td>
    </tr>
  </tbody>
</table> </br>

#### Email & Notifications

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Sender Email</td>
      <td><code>N/A</code></td>
      <td>SMTP sender address for all platform emails</td>
    </tr>
    <tr>
      <td>Sender Email Password</td>
      <td><code>N/A</code></td>
      <td>Password for sender email account</td>
    </tr>
    <tr>
      <td>SMTP Host</td>
      <td><code>N/A</code></td>
      <td>SMTP server hostname</td>
    </tr>
    <tr>
      <td>SMTP Port</td>
      <td><code>587</code></td>
      <td>SMTP port (SSL/TLS)</td>
    </tr>
    <tr>
      <td>SMTP Use SSL</td>
      <td><code>True</code></td>
      <td>Enable SSL encryption for outgoing email</td>
    </tr>
    <tr>
      <td>Support Email</td>
      <td><code>info@syncious.com</code></td>
      <td>Support contact shown in portal</td>
    </tr>
    <tr>
      <td>Flash Message</td>
      <td><code>N/A</code></td>
      <td>Banner alert shown on portal (comma-separated for multiple)</td>
    </tr>
    <tr>
      <td>Use User Level Setting for Notifications</td>
      <td><code>True</code></td>
      <td>Respect per-user email notification preferences</td>
    </tr>
    <tr>
      <td>License Expiry Warning Message</td>
      <td><code>N/A</code></td>
      <td>Days before expiry to show license warning banner</td>
    </tr>
  </tbody>
</table>

</br>
<h4>User</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Add User To Identity Server</td>
      <td><code>True</code></td>
      <td>Register new users in identity server on creation</td>
    </tr>
    <tr>
      <td>Add User On Cluster Nodes</td>
      <td><code>True</code></td>
      <td>Create user account on all cluster nodes when added</td>
    </tr>
    <tr>
      <td>Check Active Nodes To Add User</td>
      <td><code>True</code></td>
      <td>Only add user to nodes that are currently online</td>
    </tr>
  </tbody>
</table>

<h4>VDI</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Node Autoshut Timeout Delay</td>
      <td><code>300</code></td>
      <td>Seconds idle before auto-shutting a VDI node</td>
    </tr>
    <tr>
      <td>Node's Last Response Time Check</td>
      <td><code>300</code></td>
      <td>Seconds since last heartbeat before marking node Inactive</td>
    </tr>
    <tr>
      <td>Use Anyware Connector</td>
      <td><code>False</code></td>
      <td>Enable HP Anyware (PCoIP) integration</td>
    </tr>
    <tr>
      <td>Anyware Manager IP</td>
      <td><code>N/A</code></td>
      <td>Public IP of HP Anyware Manager host</td>
    </tr>
    <tr>
      <td>Anyware Deployment Name</td>
      <td><code>N/A</code></td>
      <td>Deployment name configured in Anyware Manager</td>
    </tr>
  </tbody>
</table>

</br>
<h4>VDI Sessions</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Simultaneous User Sessions</td>
      <td><code>1</code></td>
      <td>Max concurrent remote sessions per user</td>
    </tr>
    <tr>
      <td>Idle Sessions Notification</td>
      <td><code>7200</code></td>
      <td>Alert admin when session is idle this long (seconds)</td>
    </tr>
    <tr>
      <td>Remove Requested Session Time</td>
      <td><code>0</code></td>
      <td>Auto-remove sessions stuck in "Requested" state (seconds; <code>0</code> = off)</td>
    </tr>
    <tr>
      <td>Remove Ready Session Time</td>
      <td><code>0</code></td>
      <td>Auto-remove unused "Ready" sessions (seconds; <code>0</code> = off)</td>
    </tr>
  </tbody>
</table>

---

### 7.2 Advanced Settings
The following screenshots show the live SyncHPC Advanced Settings panel:

![Advanced Settings — Display Count, Job & Reports](/mdFiles/synchpc_setting11.png)
</br> *Figure: Advanced Settings — Jobs/Logs list retrieval ranges, Job billing options, output file names, and Report sharing.*


#### Display Count

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Jobs List Retrieval Range</td>
      <td><code>500</code></td>
      <td>Number of jobs fetched per page load</td>
    </tr>
    <tr>
      <td>Logs List Retrieval Range</td>
      <td><code>200</code></td>
      <td>Number of log entries fetched per page load</td>
    </tr>
  </tbody>
</table>
</br>

#### Job

| Parameter | Default | Description |
|-----------|---------|-------------|
| Billing At Job Completion | `True` | Charge user after job finishes (not at submission) |
| Use Separate Standard Error File  | `False` | Write stderr to a separate `StdErr.txt` file |
| Default Output File Name  | `StdOut.txt` | Filename for standard job output |
| Default Error File Name  | `StdErr.txt` | Filename for standard job error output |
| Use Job ID In Output File Name  | `True` | Append job ID to output/error filenames |
| Use Sudo for Job Suspend and Resume | `True` | Run suspend/resume commands with `sudo` |
| Job Submission With Inactive Head Node | `True` | Allow job submission even when head node is offline |
| Job Data Auto Download | `False` | Auto-download output files after job completes |
| Job File Inactivity Timeout  | `30` | Minutes before closing an idle job file monitor session |
| Global Licence Check  | `False` | Check license availability across all deployments before submit |
| Use Global Workstore Property Name  | `useGlobalWorkstore` | Property key for global workstore configuration |
| Fetch Job Metrics From V7  | `True` | Fetch job CPU/memory metrics via SyncHPCSlurm v7 API |
| Allow Admin Job Actions  | `True` | Allow Global Admins to act on any user's jobs |
| Job Files Upload Path  | `/mnt/syncstore` | Server-side destination path for job file uploads |
| Job Summary Columns | — | Column names to show on the jobs list page |

</br>

#### Reports

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Share Report as PDF</td>
      <td><code>False</code></td>
      <td>Enable PDF download of generated reports</td>
    </tr>
    <tr>
      <td>Node Utilization Exceed Email Interval</td>
      <td><code>N/A</code></td>
      <td>Hours between node utilization alert emails</td>
    </tr>
    <tr>
      <td>Reports Automation Task</td>
      <td><code>0 0 * * 0</code></td>
      <td>Cron schedule for automated report generation</td>
    </tr>
  </tbody>
</table>

</br>

#### Repository (Gitea)

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Share Report as PDF</td>
      <td><code>False</code></td>
      <td>Enable PDF download of generated reports</td>
    </tr>
    <tr>
      <td>Node Utilization Exceed Email Interval</td>
      <td><code>N/A</code></td>
      <td>Hours between node utilization alert emails</td>
    </tr>
    <tr>
      <td>Reports Automation Task</td>
      <td><code>0 0 * * 0</code></td>
      <td>Cron schedule for automated report generation</td>
    </tr>
  </tbody>
</table>

</br>

#### Node

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>xCAT Support</td>
      <td><code>False</code></td>
      <td>Enable xCAT integration for on-premises deployments</td>
    </tr>
    <tr>
      <td>Get Node Metrics From Scheduler</td>
      <td><code>True</code></td>
      <td>Fetch node metrics via SyncHPCSlurm v7 instead of SSH</td>
    </tr>
    <tr>
      <td>Get NodeGroup Of Nodes From Scheduler</td>
      <td><code>True</code></td>
      <td>Pull node group assignments from Slurm partitions</td>
    </tr>
    <tr>
      <td>Update VM Dynamic IP</td>
      <td><code>True</code></td>
      <td>Auto-update cloud VM IP address after restart</td>
    </tr>
    <tr>
      <td>Use Graceful PowerOff</td>
      <td><code>False</code></td>
      <td>Trigger graceful shutdown script on power-off action</td>
    </tr>
    <tr>
      <td>Python Execution Path</td>
      <td><code>N/A</code></td>
      <td>Full path to Python executable for running scripts</td>
    </tr>
    <tr>
      <td>Cygwin Path</td>
      <td><code>C:\cygwin64\bin</code></td>
      <td>Cygwin path for Windows or HPC Pack deployments only</td>
    </tr>
    <tr>
      <td>Price Per Unit</td>
      <td><code>2</code></td>
      <td>Multiplier for consumption billing (Units × Price = Bill)</td>
    </tr>
    <tr>
      <td>Unit Currency</td>
      <td><code>USD</code></td>
      <td>Currency label for consumption reports</td>
    </tr>
    <tr>
      <td>Code Server Service Port</td>
      <td><code>5000</code></td>
      <td>Port for browser-based Code Server (VS Code)</td>
    </tr>
    <tr>
      <td>Encrypt Password of Profile Admin</td>
      <td><code>True</code></td>
      <td>Store profile admin password in encrypted form</td>
    </tr>
    <tr>
      <td>AWS Secret Manager's Secret Name</td>
      <td><code>SyncHpcVaultSecretId</code></td>
      <td>AWS Secrets Manager key for credential storage</td>
    </tr>
    <tr>
      <td>Rate Limiter Window (in Seconds)</td>
      <td><code>60</code></td>
      <td>Time window for API request rate limiting</td>
    </tr>
  </tbody>
</table>

</br>
<h4>Notification</h4>

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use User Level Setting For Notifications</td>
      <td><code>True</code></td>
      <td>Use individual user preferences for notification delivery</td>
    </tr>
  </tbody>
</table>
</br>

#### Triggers (Cron Schedule)

All trigger values use standard cron format: `minute hour day month weekday`

<table>
  <thead>
    <tr>
      <th style="min-width: 300px; text-align: left;">Trigger Task</th>
      <th style="min-width: 180px; text-align: left;">Default Schedule</th>
      <th style="min-width: 220px; text-align: left;">Frequency</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>License Fetch Task</td>
      <td><code>*/1 * * * *</code></td>
      <td>Every 1 minute</td>
    </tr>
    <tr>
      <td>Weekly VM Restart Task</td>
      <td><code>0 5 * * 0</code></td>
      <td>Sundays at 5:00 AM</td>
    </tr>
    <tr>
      <td>Billing Task</td>
      <td><code>*/2 * * * *</code></td>
      <td>Every 2 minutes</td>
    </tr>
    <tr>
      <td>Delete Job And Data Task</td>
      <td><code>0 * * * *</code></td>
      <td>Every hour</td>
    </tr>
    <tr>
      <td>Restart Node Task</td>
      <td><code>0 5 * * 0</code></td>
      <td>Sundays at 5:00 AM</td>
    </tr>
    <tr>
      <td>Fetch Node Status Task</td>
      <td><code>*/1 * * * *</code></td>
      <td>Every 1 minute</td>
    </tr>
    <tr>
      <td>Notification Task</td>
      <td><code>*/3 * * * *</code></td>
      <td>Every 3 minutes</td>
    </tr>
    <tr>
      <td>Fetch Application Scripts Task</td>
      <td><code>*/1 * * * *</code></td>
      <td>Every 1 minute</td>
    </tr>
    <tr>
      <td>HA Status Task</td>
      <td><code>*/2 * * * *</code></td>
      <td>Every 2 minutes</td>
    </tr>
    <tr>
      <td>Reports Automation Task</td>
      <td><code>0 0 * * 0</code></td>
      <td>Sundays at midnight</td>
    </tr>
  </tbody>
</table>
</br>

#### SyncHPC Platform

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use Rest API To Fetch License Usage</td>
      <td><code>True</code></td>
      <td>Fetch license usage via SyncHPCSlurm REST API</td>
    </tr>
    <tr>
      <td>Use Billing</td>
      <td><code>True</code></td>
      <td>Enable the billing and consumption module</td>
    </tr>
    <tr>
      <td>Oracle Config File Location</td>
      <td><code>./wwwroot/OciConfigFile.config</code></td>
      <td>Path to the Oracle Cloud (OCI) configuration file</td>
    </tr>
    <tr>
      <td>Cloud Providers Config File Path</td>
      <td><code>SyncHpcScripts/CloudTemplates/</code></td>
      <td>Directory for cloud provider provisioning templates</td>
    </tr>
    <tr>
      <td>Timezone</td>
      <td><code>NA</code></td>
      <td>Server timezone, where <code>NA</code> means inherit from the operating system</td>
    </tr>
    <tr>
      <td>SyncHPC Host IP</td>
      <td><code>[IP_ADDR]</code></td>
      <td>Host machine IP address, not the Docker container IP</td>
    </tr>
    <tr>
      <td>Health Service Port</td>
      <td><code>5007</code></td>
      <td>Port for the SyncHPC Health Service</td>
    </tr>
    <tr>
      <td>SyncOps Server Address</td>
      <td><code>http://127.0.0.1:6001/</code></td>
      <td>SyncOps deployment service endpoint</td>
    </tr>
    <tr>
      <td>SyncHpcSlurm API Protocol</td>
      <td><code>https</code></td>
      <td>Protocol used for SyncHPCSlurm v7 communication</td>
    </tr>
    <tr>
      <td>Restart Nodes Weekly</td>
      <td><code>False</code></td>
      <td>Automatically restart all nodes every Sunday</td>
    </tr>
    <tr>
      <td>Show SyncHPC Application Logs</td>
      <td><code>True</code></td>
      <td>Display application logs in the SyncHPC Logs panel</td>
    </tr>
  </tbody>
</table>

#### License

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SyncHPC License Key</td>
      <td><code>N/A</code></td>
      <td>License key issued by the Syncious team</td>
    </tr>
    <tr>
      <td>License Fetch Interval</td>
      <td><code>1</code></td>
      <td>License info refresh interval (minutes)</td>
    </tr>
    <tr>
      <td>Use Rest API to Fetch License Usage</td>
      <td><code>True</code></td>
      <td>Use SyncHPCSlurm REST API for license data</td>
    </tr>
  </tbody>
</table>

</br>

#### Storage

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Syncstore Path</td>
      <td><code>/mnt/syncstore</code></td>
      <td>Default SyncStore mount path</td>
    </tr>
    <tr>
      <td>Workstore Path</td>
      <td><code>/mnt/workstore</code></td>
      <td>Default WorkStore mount path (job scratch space)</td>
    </tr>
    <tr>
      <td>Custom Workstore Path</td>
      <td><code>N/A</code></td>
      <td>Alternative workstore directory path</td>
    </tr>
    <tr>
      <td>Localstore Unique Keyword</td>
      <td><code>N/A</code></td>
      <td>Keyword in LocalStorePath replaced with node name at runtime</td>
    </tr>
    <tr>
      <td>Use Sudoer for Global Admin In Storages</td>
      <td><code>N/A</code></td>
      <td>Use <code>sudo</code> for storage operations by Global Admin</td>
    </tr>
    <tr>
      <td>Logical Syncstore</td>
      <td><code>N/A</code></td>
      <td>Logical path alias for SyncStore</td>
    </tr>
    <tr>
      <td>Logical Workstore</td>
      <td><code>N/A</code></td>
      <td>Logical path alias for WorkStore</td>
    </tr>
    <tr>
      <td>Actual Syncstore</td>
      <td><code>N/A</code></td>
      <td>Resolved physical path for SyncStore</td>
    </tr>
    <tr>
      <td>Actual Workstore</td>
      <td><code>N/A</code></td>
      <td>Resolved physical path for WorkStore</td>
    </tr>
    <tr>
      <td>Show Azure List Files Metadata</td>
      <td><code>True</code></td>
      <td>Include metadata in Azure Blob Storage file listings</td>
    </tr>
    <tr>
      <td>Slash Type</td>
      <td><code>/</code></td>
      <td>Path separator: <code>/</code> for Linux/cloud, <code>\</code> for Windows</td>
    </tr>
    <tr>
      <td>File Selection User Only</td>
      <td><code>False</code></td>
      <td>Restrict file browsing to user's own storage</td>
    </tr>
    <tr>
      <td>Fixed Number of Cores</td>
      <td><code>N/A</code></td>
      <td>Force a fixed core count for all jobs (empty = user-selected)</td>
    </tr>
    <tr>
      <td>SyncHPC Title</td>
      <td><code>N/A</code></td>
      <td>Custom branding name shown in portal header</td>
    </tr>
  </tbody>
</table>

### 7.3 Web Settings
The following screenshots show the live SyncHPC Web Settings panel:

![Web Settings — Portal Behaviour & Network](/mdFiles/synchpc_setting15.png)
</br> *Figure: Web Settings — Azure file metadata, job upload path, XTerm node, BM file port, network gauge thresholds, and VDI client settings.*

![Web Settings — Integration URLs & Download Links](/mdFiles/synchpc_setting16.png)
</br> *Figure: Web Settings — Sync VDI download links, support/help links, All Jobs/Pods visibility, File Edit Max Size, Grafana URL, and Paraview Service URL.*

Web Settings control the portal's appearance, external service integrations, and download links for SyncHPC clients.

#### Portal Behavior

| Parameter | Default | Description |
|-----------|---------|-------------|
| Company Name | — | Organization name displayed in the portal |
| Support Link | `https://syncious.zohodesk.com` | Link to helpdesk / support portal |
| Help Link | `https://www.syncious.com/` | Link to documentation / help page |
| All Jobs for All Users | `False` | Show all users' jobs to every user |
| All Pods for All Users | `False` | Show all Kubernetes pods to every user |
| On Load All Jobs Selection | `False` | Pre-select all jobs when the jobs page loads |
| File Edit Max Size | `10` | Max file size (MB) editable in the browser |
| Make Job Tag Mandatory | `False` | Require a tag when submitting jobs |
| Custom Tag Name | — | Label for the custom job tag field |
| Custom Tag Values | — | Comma-separated preset values for custom tag |
| Restrict Storage Access | `False` | Limit users to their own storage only |
| VDI Mode Only | `False` | Restrict portal access to VDI sessions only |
| Auto Close Menu (seconds) | `15000` | Milliseconds before sidebar auto-collapses |
| Show Job Metrics | `True` | Display CPU/memory graphs on job detail pages |
| Show Wallet Amount | `True` | Show billing wallet balance to users |
| Show Client App | `True` | Display the SyncHPC desktop client download option |
| Show Terminal in Header | `True` | Show terminal shortcut button in portal header |
| File Upload Regex | `^[A-Za-z0-9-_.@%+]+$` | Allowed filename pattern for uploads |
| Exclude Text Extensions | `.zip,.tar,.gz,.bz2,.xz,.7z,.rar` | Extensions excluded from in-browser text preview |
| Storage View File Lines Per Page | `1000` | Lines shown per page in the storage file viewer |
</br>

#### Ports & Network

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 140px; text-align: left;">Default</th>
      <th style="min-width: 520px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Utility Access Port</td>
      <td><code>5004</code></td>
      <td>Port for utility and tool services</td>
    </tr>
    <tr>
      <td>Route Utility Download via Nginx</td>
      <td><code>False</code></td>
      <td>Route utility downloads through the Nginx reverse proxy</td>
    </tr>
    <tr>
      <td>BM File Download Port</td>
      <td><code>5003</code></td>
      <td>Port for bulk or batch file downloads</td>
    </tr>
    <tr>
      <td>Folder Download Port</td>
      <td><code>5005</code></td>
      <td>Port for zipped folder downloads</td>
    </tr>
    <tr>
      <td>Logs Per Request Count</td>
      <td><code>2000</code></td>
      <td>Maximum log entries returned per API request</td>
    </tr>
    <tr>
      <td>Network Gauge Thresholds</td>
      <td><code>5000, 9000, 10000</code></td>
      <td>KB/s thresholds for the green, yellow, and red network gauge</td>
    </tr>
  </tbody>
</table>
</br>

#### Integration URLs

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Parameter</th>
      <th style="min-width: 220px; text-align: left;">Default</th>
      <th style="min-width: 480px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>JupyterHub URL</td>
      <td><code>http://[IP_ADDR]:8080/hub/</code></td>
      <td>JupyterHub integration endpoint</td>
    </tr>
    <tr>
      <td>Code Server URL</td>
      <td><code>http://[IP_ADDR]:8090/login</code></td>
      <td>Browser-based VS Code (Code Server) URL</td>
    </tr>
    <tr>
      <td>Gitea URL</td>
      <td><code>https://[IP_ADDR]/</code></td>
      <td>Gitea web interface URL</td>
    </tr>
    <tr>
      <td>XTerm Node Host</td>
      <td><code>https://[IP_ADDR]:3000</code></td>
      <td>XTerm/Wetty terminal service URL</td>
    </tr>
    <tr>
      <td>Paraview Service URL</td>
      <td><code>https://[IP_ADDR]:9000</code></td>
      <td>ParaView remote visualization endpoint</td>
    </tr>
    <tr>
      <td>VDI Client API</td>
      <td><code>http://localhost:5011/api</code></td>
      <td>SyncVDI desktop client API endpoint</td>
    </tr>
    <tr>
      <td>Is Grafana Configured</td>
      <td><code>True</code></td>
      <td>Whether Grafana monitoring is enabled</td>
    </tr>
    <tr>
      <td>Grafana Dashboard URL</td>
      <td><code>https://[IP_ADDR]/grafana/d/</code></td>
      <td>Grafana dashboard base URL</td>
    </tr>
  </tbody>
</table>
</br>

#### Download Links

<table>
  <thead>
    <tr>
      <th style="min-width: 320px; text-align: left;">Parameter</th>
      <th style="min-width: 720px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Sync Auto Download Link</td>
      <td>Auto-update download URL for the SyncHPC client</td>
    </tr>
    <tr>
      <td>Sync VDI Service Windows Download</td>
      <td>SyncVDI Windows service installer URL</td>
    </tr>
    <tr>
      <td>Sync VDI Service Linux Download</td>
      <td>SyncVDI Linux service package URL</td>
    </tr>
    <tr>
      <td>Sync VDI Client Download Link</td>
      <td>SyncVDI client application download URL</td>
    </tr>
    <tr>
      <td>Sync VDI Gateway Link</td>
      <td>SyncVDI gateway component download URL</td>
    </tr>
  </tbody>
</table>
</br>

#### Advanced Web Options

| Parameter | Default | Description |
|-----------|---------|-------------|
| Use Compute Node IP for Upload | `False` | Upload job files via compute node IP (not head node) |
| Copy Output to Input File Directory | `False` | Copy job output back into the input directory |
| Show oVirt Infrastructure | `False` | Enable oVirt/RHEV virtualization platform support |
| Skip Route via SyncHPC for Terminal | `True` | Connect terminal directly (bypass SyncHPC proxy) |
| Use Edit in Storage Workstore | `False` | Allow in-browser file editing in workstore storage |
| Web Root Path | `/opt/synchpchost/wwwroot/` | Physical web application root directory |
| Provider Image Path | `assets/images/syncious/` | Path for cloud provider logo/icon assets |
| Image Build Log Path | `/mnt/data/docker-images` | Directory for Docker image build logs |
</br>

## 8. Nodes


The **Nodes** module in SyncHPC is a crucial component that serves the purpose of **Activation** and **Deactivation** of cluster resources. Both **Global Admin** and **Deployment Admin** have access to node interaction features.

![Nodes Module](/mdFiles/Node.png)
</br> *Figure: Nodes Module — displays all cluster nodes with real-time status, CPU %, RAM %, GPU %, and network metrics.*

### 8.1 Adding a Node

Admin can add nodes using the **"Add Node"** button, which opens a form with the following parameters:

<table>
  <thead>
    <tr>
      <th style="min-width: 320px; text-align: left;">Parameter</th>
      <th style="min-width: 720px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Node Type</strong></td>
      <td>SyncHPC is a pluggable platform, so both compute nodes and workstations can be added.</td>
    </tr>
    <tr>
      <td><strong>Cloud Provider</strong></td>
      <td>Select the cloud infrastructure provider, such as Azure, AWS, GCP, or on-premises.</td>
    </tr>
    <tr>
      <td><strong>Node Name</strong></td>
      <td>Must be unique across the deployment.</td>
    </tr>
    <tr>
      <td><strong>Select Deployment</strong></td>
      <td>Choose the deployment to which the node should be added.</td>
    </tr>
    <tr>
      <td><strong>Size of the Node</strong></td>
      <td>For example, <code>Standard_D2s_v3</code>. This must also be configured in the Node Configurator.</td>
    </tr>
    <tr>
      <td><strong>Disk Image Name</strong></td>
      <td>The operating system disk image to use for the node.</td>
    </tr>
    <tr>
      <td><strong>Disk Type</strong></td>
      <td><code>HRS</code> for High Redundancy Storage or <code>LRS</code> for Low Redundancy Storage.</td>
    </tr>
    <tr>
      <td><strong>Internal IP</strong></td>
      <td>Internal or private IP address of the node.</td>
    </tr>
    <tr>
      <td><strong>Public IP</strong></td>
      <td>Public IP address of the node, if applicable.</td>
    </tr>
    <tr>
      <td><strong>Allow Connect</strong></td>
      <td>Enable this to allow users to connect to this node through a remote session.</td>
    </tr>
  </tbody>
</table>
</br>

![Add Node Form](/mdFiles/Add_Node.png)
<br> *Figure: Add Node form — select Node Type, Deployment, Cloud Provider, Node Name, Node Size, Platform, Disk Type, IP addresses, and Allow Connect.*
</br>



### 8.2 Attaching a Node to a Deployment

After a node is added to the cluster, it can be attached to any desired deployment using the **"Attach Node"** option. This presents a list of available nodes from which admins can select and attach to the target deployment.
</br>

### 8.3 Node Operations

Admins can interact with nodes using the following actions available in the Nodes module:

| Action | Description |
|--------|-------------|
| **Start** | Power on the node |
| **Stop** | Shut down the node gracefully |
| **Restart** | Reboot the node |
| **Connect** | Open a remote desktop / VDI session on the node |
| **SSH** | Open an SSH terminal session to the node |
| **Scale Up/Down** | Adjust the number of compute nodes using the scaling slider |

</br>

![Node Operations](/mdFiles/Node_Action.png)

 </br> *Figure: Node Actions — right-click or action menu showing Start, Stop, Restart, Connect, SSH, Reports, Terminal, and more options per node.*


> **Scaling:** The scaling bar provides an easy drag-and-drop interface for admins to scale the cluster up or down without manually adding/removing individual nodes.

### 8.4 Customizing Node Columns

The columns displayed in the Nodes module can be customized using the **"Edit Column"** option. This shows a list of checkboxes — both users and admins can select which columns to display (e.g., CPU %, RAM %, GPU %, Jobs/Total, Node Group, State, etc.).

The **"Action"** button allows bulk operations — admins can **start** or **stop all nodes** in a deployment at once.

![Edit Node Columns](/mdFiles/Node_Edit_Col.png)
</br> *Figure: Edit Columns dialog — checkboxes to show/hide Availability, State, SchedulerState, Node Group, Jobs/Total, GPU Mem %, GPU %, Sessions, HPC Units, Billed Hrs, Network, and Cores.*


### 8.5 Node Activity Logs

From a security perspective, SyncHPC records all activity performed by each user who has interacted with cluster nodes. The **"Logs"** option provides a full audit trail of node-level actions, helping admins track and review all cluster interactions.

![Node Activity Logs](/mdFiles/Node_Logs.png)
</br> *Figure: Node Logs — complete audit trail of all node actions (Stop Node, Billing Update, etc.) with initiator, timestamp, and status.*


---

## 9. Jobs


The Job Tab in the administrative panel allows Global Admins and users to create, submit, and monitor jobs within the system. It also provides the capability to monitor jobs submitted by all users.

### 9.1 Creating a New Job

Navigate to the **Job** module. This page provides monitoring, managing, and viewing capabilities for every job.

1. Locate the **"+ New Job"** button and click on it.
2. A pop-up form will appear with various parameters and fields to configure the job.
3. Select the appropriate application from the list assigned to the deployment. Select **"Default"** as Node Group if no additional groups are created.
4. Customize the job name, number of cores (as per license), Node Group, and application version.
5. Upload files from your local machine using the **"Upload Files"** button, or use **"SyncStore"** to browse files already stored in the user's SyncStore folder.
6. Provide all necessary details and upload required files.
7. In Additional Settings, add **Tags** (e.g., username, user-ID) for easy job identification.
8. Set **Job Priorities** from the "Select Priority" drop-down as needed.

The following screenshots show the job creation form steps:

![Create Job](/mdFiles/job_creat.png)
</br> *Figure: New Job form — complete job creation interface showing all configuration options.*

![Create Job — Step 1: Job & Application Settings](/mdFiles/Create_job_form1.png)
</br>

 *Step 1: Enter job name prefix, select application, version, number of cores, node group, and output file settings.*

![Create Job — Step 2: File Settings](/mdFiles/Create_job_form2.png)
</br> *Step 2: Select input files from SyncStore or upload from local machine.*


![Create Job — Step 4: Review](/mdFiles/Create_job_form4.png)
</br> *Step 4: Review all job parameters before submission.*

![Create Job — Step 5: Submit](/mdFiles/Create_job_form5.png)
</br> *Step 5: Click Submit to queue the job.*

9. Optionally change the **Job Output Directory** to save job output to a different SyncStore path.
10. Choose whether to store data in Workstore after job completion by ticking the relevant checkboxes.

> **Note:** Workstore is the working directory where job processing takes place. It is recommended to keep data in SyncStore (persistent storage) and not Workstore (temporary storage). Admins can enforce this via "Deployment Settings" — job operators will not be able to override this.

11. Click **"Submit"** to submit the job.

**Additional notes:**

The "Additional Input Files" section is used for uploading supported files for the Primary Input file. Users can upload all input files to SyncStore first, then use the **"USE SYNCSTORE"** option in the job form to browse and select those files.

**Job Life Cycle Stages:**

After submission, every job goes through 4 primary stages. Each stage has Succeeded, Running, Cancelled, and Failed statuses to help identify exactly where a job failed:

<table>
  <thead>
    <tr>
      <th style="min-width: 220px; text-align: left;">Stage</th>
      <th style="min-width: 760px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>1. Job Init</strong></td>
      <td>The job gets initialized over SyncHPC.</td>
    </tr>
    <tr>
      <td><strong>2. Data Copy</strong></td>
      <td>The job's data is copied from the user's SyncStore to the user directory in Workstore for processing.</td>
    </tr>
    <tr>
      <td><strong>3. Job Submit</strong></td>
      <td>Once the data is available in working storage, the job is submitted to Slurm for management. Slurm decides which node the job should run on. If a Node Group is selected, the job is submitted to that partition.</td>
    </tr>
    <tr>
      <td><strong>4. Job Execute</strong></td>
      <td>This is the final stage. It shows whether the job is <code>Running</code> or <code>Queued</code> if licenses or resources are insufficient. After completion, the job status appears as <code>Failed</code> or <code>Succeeded</code>.</td>
    </tr>
  </tbody>
</table>
</br>

### 9.2 Job Form Additional Settings

The additional settings of the job form are optional but available based on user requirements:

<table>
  <thead>
    <tr>
      <th style="min-width: 260px; text-align: left;">Setting</th>
      <th style="min-width: 700px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Start Command</strong></td>
      <td>Linux commands executed before job execution starts.</td>
    </tr>
    <tr>
      <td><strong>End Command</strong></td>
      <td>Linux commands executed after job execution finishes.</td>
    </tr>
    <tr>
      <td><strong>Memory Per CPU</strong></td>
      <td>Specifies memory per CPU using Slurm's <code>--mem-per-cpu</code> parameter.</td>
    </tr>
    <tr>
      <td><strong>Wall-clock Time</strong></td>
      <td>A Slurm feature that stops a running job before it is killed.</td>
    </tr>
    <tr>
      <td><strong>Tasks Per Node</strong></td>
      <td>Controls how tasks are distributed across compute nodes for better performance and resource utilization.</td>
    </tr>
    <tr>
      <td><strong>Is Job Exclusive</strong></td>
      <td>If enabled, the allocated compute node is reserved exclusively for this job.</td>
    </tr>
    <tr>
      <td><strong>Minimum Scratch Space</strong></td>
      <td>Minimum temporary storage allocated for intermediate files during job execution.</td>
    </tr>
    <tr>
      <td><strong>Schedule Job Submission</strong></td>
      <td>Schedules job submission for a specific time, similar to scheduling an email.</td>
    </tr>
    <tr>
      <td><strong>Add Tag</strong></td>
      <td>Tags help admins and users sort and filter jobs by group, such as department name.</td>
    </tr>
    <tr>
      <td><strong>Select Priorities</strong></td>
      <td>Sets job priority in Slurm. Higher values get precedence.</td>
    </tr>
    <tr>
      <td><strong>Additional Parameters</strong></td>
      <td>Extra Slurm parameters such as <code>--cpus-per-task</code>, <code>--mem</code>, <code>--partition</code>, <code>--gres</code>, <code>--constraint</code>, <code>--time</code>, <code>--export</code>, <code>--mail-type</code>, <code>--mail-user</code>, and <code>--wait</code>.</td>
    </tr>
    <tr>
      <td><strong>Dependencies Settings</strong></td>
      <td>Specifies relationships between jobs. Types: <code>afterok</code>, <code>afternotok</code>, <code>afterany</code>, <code>after</code>, <code>singleton</code>.</td>
    </tr>
  </tbody>
</table>
</br>

### 9.3 Job Templates

![Job Templates](/mdFiles/job_Template.png)
</br> *Figure: Job Templates list — saved templates with Template Name, Deployment, Application, Version, and creator details.*


The Job Templates feature allows users to submit a predefined set of job properties repeatedly without re-entering them. Both administrators and users can create templates from the Jobs module. Saved templates are displayed on the left side column of the Jobs page under **"Job Templates"** and auto-populate all pre-defined properties when selected in the New Job form.

### 9.4 Monitoring Job Output

![Job Detail — Overview Tab](/mdFiles/Job_Detail1.png)
</br> *Figure: Job Detail page — Overview tab showing job state, stage, node list, node group, peak RAM/CPU, and all additional information.*


![Job Detail — Action Dropdown](/mdFiles/Job_Detail3.png)

![Job Output](/mdFiles/Job_output.png)
</br> *Figure: Job output view — displays the real-time stdout output of the running or completed job.*

1. In the Job Tab, locate the job you want to monitor.
2. In the **Action Column** drop-down menu, select **"Show Output"** for the desired job, or select the `StdOut.txt` file and choose **"View File"**. Multiple files can be opened for the same job simultaneously for better viewing and comparison.
3. The system will display the output generated by the job.
4. Both the admin and the job operator can perform additional actions such as resubmitting, stopping, or deleting.

> **Note:** Even if a job is deleted by the admin or user, the activity is stored in the system logs for future reference.

### 9.5 Monitoring Specific Jobs

1. Use the available filters in the Job Tab to monitor specific jobs.
2. Select desired filters such as job status, application, user, or date range.
3. Apply the filters to refine the list of displayed jobs.


### 9.6 Job Logs

![Job Logs](/mdFiles/Job_logs.png)
</br> *Figure: Job Logs — audit trail of all job actions (Submit, Job Execute, Data Copy, Job Stage) with initiator, timestamp, and status.*



Admins and users can monitor job logs, which display each step of every job submitted over SyncHPC along with their status.

Each job's details can be viewed by **double-clicking on the Job Name** from the Jobs page. This opens a slide panel showing:

- Parameters used for submitting the job
- Input files used
- Application Name, Version, cores, User, Node Group, and Status
- Start Time to End Time
- Additional Settings mentioned
- Job Template used (if any)
- Priority of the job

---

## 10. Storage Management

![Storage Management](/mdFiles/Storage.png)
</br> *Figure: Storage module — file browser showing SyncStore contents with file names, owners, sizes, and last modified dates.*



Storage can be accessed by both users and admins for storing their respective data.

### 10.1 Accessing Storage System

Log in to your account and navigate to the **Storage** tab in the main navigation menu or home dashboard.

### 10.2 Creating a File or Directory

Select the **"Create"** button, choose the type of object (file or directory), enter a name, and choose the save location.

### 10.3 Uploading a File or Directory

Select the **"Upload"** button and choose the file or folder from your local machine, or drag and drop it into the upload box.

![Storage Upload Options](/mdFiles/Storage_Upload.png)
</br> *Figure: Storage upload dropdown — select "Upload File" to upload individual files or "Upload Directory" to upload an entire folder to SyncStore.*

### 10.4 Downloading Multiple Files

Select files using the checkboxes next to each file, then click the **"Download"** button to initiate the download.

### 10.5 Renaming or Deleting a File or Directory

Select the object and choose the **"Rename"** or **"Delete"** button. Enter a new name if renaming, or confirm the deletion.

### 10.6 Monitoring Storage Usage

Check the storage usage indicator on the Storage tab to see how much space is used and how much is available. Click **"Details"** for a detailed breakdown.

### 10.7 Copy & Paste Files

Admins and users can copy and paste files from SyncStore to Workstore or vice versa into respective user directories. Zipping of folders is also supported in SyncStore storage.

### 10.8 Data Transfer Logs

![Storage Transfer Logs](/mdFiles/Storage_Logs.png)
</br> *Figure: Storage Logs — records all upload, download, and delete actions with filename, action type, initiator, timestamp, and status.*


Helps users and admins to monitor and download storage activities such as creating, uploading, and downloading files.

### 10.9 Zipping of Files


To zip multiple files, select the files you wish to zip and provide a name for the zip file. Use the zip option from the storage menu. The system creates a zip file at the end.


![Storage - Zip Files](/mdFiles/storage_zip.png)
</br> *Figure: Zip File Names dialog — enter a folder name and select files to zip in Storage.*

### 10.10 Accessing Local Storage


If a job was submitted with "Local Store" selected as the working directory, the job's data can be accessed from storage by selecting the node on which the job was running. This will display the local store path in SyncHPC.

Example: `/mnt/Nodename/workstore/`


![Storage - Local Storage](/mdFiles/storage_local.png)
</br> *Figure: Local Storage file browser — view job data stored on the node local path.*

---

## 11. User Management

![User Management List](/mdFiles/User_List.png)
</br> *Figure: User Management — lists all users with username, email, access role (Global Admin / Deployment Admin / Job Operator), and attached group.*



There are 3 distinct user roles in SyncHPC: Global Admin, Deployment Admin, and Job Operator.

### 11.1 Global Admin

The Global Admin has full access. Typical special tasks include:

- Accessing the Wallet balance and settings
- Creating a New Deployment
- Adding new applications
- Adding new users (Deployment Admins or Job Operators)

### 11.2 Deployment Admin

- Access to a specific deployment only
- Manage users for that deployment only
- Control of the nodes
- Add applications to that deployment only

### 11.3 Job Operator

- Add new jobs
- Storage upload and download
- Can see the nodes but cannot access or control them
- Request and manage sessions

### 11.4 Addition of Users

To add a new user in SyncHPC, you can either add a new user directly or map an existing user in an Active Directory.

### 11.5 Adding a New User

![Add User Form](/mdFiles/User_Add.png)
</br> *Figure: Add User form — enter username, select role (Global Admin, Deployment Admin, Job Operator, Reader), deployment, personal details, and password.*


1. Navigate to the **Users** section.
2. Click **"Add User"**.
3. Fill in required fields: username, first name, last name, and password.
4. Fill in additional fields such as email address.
5. Click **"Submit"** to create the new user.

### 11.6 Define User Parameters

The admin can assign the new user to a specific deployment and role. Other parameters include basic information like name, password, and email.

### 11.7 Access Control

![User Detail & Access Control](/mdFiles/User_Detail.png)
</br> *Figure: User Detail page — shows overview, Access Control table (deployment, role, sessions, storage, node group, job priority), and Group Control.*

![Update User Access Control](/mdFiles/Job_Access_control.png)
</br> *Figure: Update User Access Control form — configure User Role, Node Group, Job Directory Path, Job Priority, Core Quota, Max Jobs, Application Access, Storage Access, and Credits.*


The Access Control option provides further access management — for example, attaching or removing a user from a deployment.

### 11.8 Node Group Assignment

Users can also be assigned to a specific Node Group within a given deployment from the Access Control List. Click the Action "Icon" at the bottom section to assign Node Groups to each user as per requirements.

### 11.9 Sanity Check from the Backend

It is advisable that the administrator verifies that users added on SyncHPC are also added at the backend level.

**1. User Addition on SyncHPC-Host Machine**

When a user is added, they should be available on the SyncHPC-Host machine.

**2. User Addition on HPC Head Node and Compute Nodes**

When a user is attached to a deployment, they should be available on the HPC head node and compute nodes. If compute nodes are OFF, users will be added when they are turned ON.

### 11.10 Configuring Users in SyncHPC

#### A. User Details

<table>
  <thead>
    <tr>
      <th style="min-width: 300px; text-align: left;">Configuration</th>
      <th style="min-width: 720px; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>User Role</td>
      <td>Assigned role for the user.</td>
    </tr>
    <tr>
      <td>Allocated Cores</td>
      <td>Limits the user to a maximum number of cores. For example, if the limit is 24 cores, the user cannot submit jobs that require more than 24 cores.</td>
    </tr>
    <tr>
      <td>Application Accessibility</td>
      <td>Applications the user can access.</td>
    </tr>
    <tr>
      <td>Node Group Accessibility</td>
      <td>Node groups the user can access.</td>
    </tr>
    <tr>
      <td>Mapping Of Workstation</td>
      <td>Maps a fixed workstation for VDI session requests.</td>
    </tr>
    <tr>
      <td>Max Time Per Session (Hours)</td>
      <td>Limits the user's RDP session duration.</td>
    </tr>
    <tr>
      <td>Custom Notifications</td>
      <td>Per-user notification settings.</td>
    </tr>
    <tr>
      <td>Custom Job Priorities</td>
      <td>Per-user job priority settings.</td>
    </tr>
    <tr>
      <td>User Start Command</td>
      <td>Command executed before every job submitted by this user.</td>
    </tr>
    <tr>
      <td>Anyware User GUID</td>
      <td>CAS (Anyware) user identifier.</td>
    </tr>
    <tr>
      <td>Anyware User UPN</td>
      <td>CAS (Anyware) user principal name.</td>
    </tr>
  </tbody>
</table>
</br>

#### B. Access Control List

| Configuration | Description |
|---------------|-------------|
| Node Group | Selects the node group partition for the user in Slurm. The user can only submit jobs using the selected partition. |
| Mapping Workstation | Assigns a fixed workstation for VDI session requests. |
| Update User App Access | Grants application access to each user (user can only submit jobs using assigned applications). |
| Job Submit Username | The username under which jobs are run, reflected in Slurm's `squeue`. |
| Session Request-Connect Username | Username used when downloading and logging in through RDP & VNC Viewer (SyncVDI feature). |

---

## 12. Application Management

![Applications List](/mdFiles/Application_List.png)
</br> *Figure: Applications module — lists installed applications with name, version, date added, type, license check status, node group, and actions.*



In order to submit jobs from the SyncHPC GUI, users need to map installed applications with SyncHPC. SyncHPC provides **customizable job submission forms** to simplify the job submission process.

Administrators can customize these forms to meet the specific needs of their HPC system.

### 12.1 Application Addition

![Add Application Form](/mdFiles/Application_Add.png)
</br> *Figure: Add Application form — select deployment, application name, version, Add Fabric (e.g., Intel MPI), license check toggle, static cores, queues, and default memory.*


There are two types of applications:

1. **Pre-defined Applications:** Commercial/popular applications already part of SyncHPC's available list.
2. **Other Applications:** Not pre-defined in SyncHPC — admin must build the form by selecting **"Other"**.

**Steps to add an application:**

1. Select the application from the list. If unavailable, select **"Other"**.
2. Provide input for fields like version, MPI, fabric, etc.
3. Enable/Disable the License check as per your application.
4. Note: Execution and license scripts may be added at a later stage.

### 12.2 Writing an Execution Script

When a user submits a job, an execution script is run at the backend. Admins should define the execution script for each application version.

The following variables are exported by SyncHPC during execution and can be used directly in the execution script:

| Variable | Definition |
|----------|------------|
| `SYNC_START_CMD` | Pre-processing command to start with. |
| `SYNC_END_CMD` | End command if required. |
| `SYNC_STD_OUT_FILE` | Output file. |
| `SYNC_APP_VERSION` | Application version. |
| `SYNC_JOB_MIN_CORES` | Minimum number of cores. |
| `SYNC_JOB_MAX_CORES` | Maximum number of cores. |
| `SYNC_CORES_PER_NODE` | Cores per node. |
| `SYNC_JOB_NAME` | Job name. |
| `SYNC_JOB_ID` | Job ID. |
| `SYNC_EXTRA_PARAM` | If extra parameters are required. |
| `SYNC_SCHEDULER` | Scheduler used for this job. |
| `SYNC_WORK_DIRECTORY` | Working directory for the job. |
| `SYNC_MPI` | MPI to be used. |
| `SYNC_FABRIC` | Fabric to be used. |
| `SYNC_CREATE_GRAPH` | To produce a graph. |

> **NOTE 1:** A simple way to get all variables is by running a sample job without any execution script. The job will fail, but it will generate a script called `Job_xxxx.sh` in the job's directory containing all defined variables.

> **NOTE 2:** Uploaded execution scripts can be found at: `/opt/synchpchost/wwwroot/UserScripts`. Admins can directly edit scripts from this location.

### 12.3 Building Custom Form of Applications

To add new fields to an existing application, select **"Build Application"** by selecting an application and clicking the Actions button. Click on **"Add New Field +"** and select the required options to build a custom form for the application.

### 12.4 Updating Application

![Application Actions](/mdFiles/Application_Action.png)
</br> *Figure: Application Actions dropdown — options include Add Custom Action, Clone Application, Build Application, Update Application, and Delete Application.*


Admins can edit or update listed application configurations. Configurable settings include:

- MPI
- License
- Fabric
- Static Cores
- Queues

### 12.5 Managing Files in Application

![Manage Application Files](/mdFiles/Application_Manage_File.png)
</br> *Figure: Manage Files dialog — upload or create Execute File, License File, Resume File, Cancel File, Suspend File, Graph Files, Progress Script, and Custom Action Files.*


SyncHPC provides the option to upload **Suspend, Resume, Cancel, Execute, and License Check** files for each installed application. This is useful for CAE applications such as Abaqus and LS-Dyna for stopping and resuming jobs.

### 12.6 Application Logs

![Application Logs](/mdFiles/App_Logs.png)
</br> *Figure: Application Logs — audit trail of all application actions (Add, Update, Build) with initiator, timestamp, and success/failure status.*


- The Application module includes logs for tracking all activities related to applications.
- Logs show which admin interacted with parameters, uploaded, or deleted files from an application.
- Creation and deletion of applications are tracked as well.

---

## 13. License Management


SyncHPC includes a **License** module for managing FlexLM (Fluent), Altair licenses, and many more. It allows the addition of license servers and enables both admins and users to view real-time license usage — showing which licenses are currently consumed and by which users. Admins can add any number of license servers as required.

### 13.1 Addition of License Server

![Add License Server](/mdFiles/Lic_Add.png)
</br> *Figure: Add License Server form — enter License Name, Type (Flexera/RLM), License Host, Port, Location, and Comments.*

![Update License Server](/mdFiles/Lic_Update1.png)
</br> *Figure: Update License Server — edit license details including name, type, host, and port.*


To add a new license server:

1. Go to the **License** module.
2. Click **"New License Server"**.
3. A pop-up form will appear — fill in the respective license server details and submit.

The added license server will appear in the server list. Both users and admins can then track license usage. Ports, hostnames, or license types can be updated in the future as needed.

### 13.2 Monitoring of Licenses

Both admins and users can monitor license usage in real time from the License module. The view shows which licenses are currently consumed and by which users, enabling teams to plan job submission accordingly.

---

## 14. Dashboard Desk

![SyncHPC Dashboard](/mdFiles/DashBoard.png)
</br> *Figure: Dashboard — summary KPIs showing total Jobs (438), Nodes (8), Users (42), Storage usage (102,520 GB), and Licenses (0 active). Includes Node CPU/RAM/GPU utilization gauges and Jobs/Sessions charts.*



The administrator can get an overview of the SyncHPC setup using the **Dashboard**. It provides a brief summary of resources at the current moment. The management team can use the analytical data from the Dashboard, along with Reports, to make resource management decisions.

### 14.1 Integration of Grafana in SyncHPC

![Grafana Analytics Dashboard](/mdFiles/Grafana.png)
</br> *Figure: Grafana Analytics view — shows Job Completed (pie chart), Job Summary, All Nodes Usage timeline, Job Submissions trend, Job By Application, Job By Users, and Job By Nodes.*


SyncHPC supports integration with **Grafana** for advanced monitoring and visualization. Switching to Grafana and configuration is streamlined within SyncHPC, allowing administrators to get richer analytics and dashboards for their HPC environment with ease.

---

## 15. Reports

![Reports Module](/mdFiles/Report.png)
</br> *Figure: Reports — analytics view with Completed Jobs breakdown, Job Submit Count by Working Hours, Storage usage trend, Average Core Usage, Job Submit Count, and Jobs by Application charts over configurable date ranges.*



The administrator can access various statistics and reports per deployment, including data on nodes, storage, users, and applications. These reports can be used to identify trends and patterns and to make informed decisions about resource allocation and management.

---

## 16. SyncHPC Health Service


The **Health Service** provides essential resource information for keeping track of SyncHPC services, network connectivity, and database health.

The Health Service runs on the SyncHPC host machine and can be configured via the SyncHPC Settings under the SyncHPC configuration section. It offers administrators a quick view of the overall system health and connectivity status of all critical services.

---

## 17. Summary of SyncHPC


SyncHPC, developed by **Syncious Systems Private Limited**, is a software platform designed to help administrators manage and optimize high-performance computing (HPC) systems. Built on the philosophy of *"Simplifying Hybrid HPC & VDI Workloads"*, SyncHPC provides a pluggable, enterprise-grade platform that gives organizations architectural freedom, custom workflow creation, and accelerated deployment across hybrid cloud and on-premises environments.

The SyncHPC Admin Guide provides administrators with the necessary information to effectively manage and maintain their HPC systems, including procedures for installation, configuration, and maintenance.

### Guide Topics Covered

- Setting up and configuring the SyncHPC platform
- Managing and monitoring HPC resources
- Allocating resources to user groups
- Managing user accounts and permissions
- Monitoring system performance and usage
- Backing up and restoring data
- Troubleshooting and resolving issues

The SyncHPC Admin Guide is an essential resource for administrators aiming to effectively manage their HPC systems. It offers comprehensive coverage of all aspects of the SyncHPC platform, equipping administrators with the tools and information needed to ensure smooth operation and optimal performance.

For any issues, please contact us at **info@syncious.com**.

---

## 18. Appendix: Useful Commands


### Head Node Commands

Admin can check storage distribution via terminal SSH or by using SyncHPC's "Run Command" feature.

**Check all mounted storages:**

```bash
df -h
```

### Slurm Commands

SyncHPC supports multiple schedulers. When Slurm is installed, admins can monitor and configure Slurm settings and jobs.

**Show Node Status:**

```bash
sinfo -Nle
```

**Check Active Jobs (using alias `jobinfo`):**

```bash
jobinfo
```

**Drain a Node:**

```bash
scontrol update nodename=<Nodename> state=drain reason=testing
```

**Resume a Node:**

```bash
scontrol update nodename=<Nodename> state=resume
```

**Set Node to Idle:**

```bash
scontrol update nodename=<Nodename> state=idle
```

**Display License information:**

```bash
scontrol show license
```

**Display Job Details:**

```bash
scontrol show jobs
```

**Display Node Details:**

```bash
scontrol show nodes
```

**Check connection between Slurm and SyncHPC:**

```bash
systemctl status synchpc_slurm.service
```

**Check Upload and Folder-Download Service:**

```bash
systemctl status Synchpc_upload.service
```

---

### Docker Commands

**Check currently running Docker containers on SyncHPC host:**

```bash
docker ps
```

**List all containers including stopped:**

```bash
docker ps -a
```

**Start a Docker container:**

```bash
docker start <container_name_or_id>
```

**Stop a Docker container:**

```bash
docker stop <container_name_or_id>
```

**Restart a Docker container:**

```bash
docker restart <container_name_or_id>
```

**View Docker container logs:**

```bash
docker logs <container_name_or_id>
```

**Execute a command inside a running Docker container:**

```bash
docker exec -it my_container bash
```

---

*For any issues, please contact the Syncious support team at **info@syncious.com**.*
</div>