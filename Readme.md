**Kin Legacy: Meta Operating System**

Welcome to **Kin Legacy**, a web-based operating system/meta OS derived from FriendOS, reimagined to empower DevOps, AI workflows, microservices, and containerized environments (Docker, Podman, and more). Currently in development as version **1.5.0 "Legacy"**, Kin aims to level the uneven terrain of cloud infrastructure and architecture, offering a seamless, high-level interface that hides complexity while amplifying productivity.

Kin, or **Key Internet Node**, is designed to run in any browser on any internet-connected device, delivering a platform-independent experience inspired by the simplicity of Tripos/AmigaOS, the power of Unix, and the collaborative ethos of FriendOS. Whether you're managing containers, orchestrating microservices, or building AI-driven solutions, Kin provides the tools to streamline your workflow.

![Kin Legacy](https://os-kin.com/BG.jpg)

**[Join us on Discord](https://discord.gg/MnZPwZTkSF)**

---

**Vision**

Kin Legacy transforms the web into a meta-OS, abstracting the complexities of modern cloud ecosystems into intuitive, high-level components. Our mission is to:

* **Unify Infrastructure**: Smooth out the topography of cloud architectures with a consistent, browser-based interface.  
* **Empower Developers**: Provide DevOps and AI practitioners with tools to manage, migrate, and monitor services effortlessly.  
* **Simplify Complexity**: Hide the intricacies of stacks under meta-OS features like meta-devices, libraries, and system commands.

---

![Kin Workspace](https://github.com/auraeinteractive/kin-legacy/blob/main/kin.png)

---


**Key Features**

Kin Legacy introduces powerful capabilities tailored for modern development and operations:

* **Single Sign-On (SSO)**: Secure, centralized authentication across all services and tools.  
* **High-Level DevOps Tools**:  
  * **Migration**: Seamlessly move workloads across environments.  
  * **Log Parsing**: Extract insights from logs with built-in utilities.  
  * **Backups**: Automate and manage backups with ease.  
  * **Alerts**: Real-time monitoring and notifications.  
  * **Report Generation**: Generate and handle detailed system reports.  
  * **Service Management**: Start, stop, and restart services intuitively.  
* **Configuration Management**: Fine-tune your environment with a unified interface.  
* **Meta-OS Components**:  
  * **Meta-Devices**: Abstracted hardware and service layers.  
  * **Libraries**: Reusable, high-level abstractions for rapid development.  
  * **System Commands**: Familiar OS-like commands (e.g., copy, list, makedir) inspired by Tripos/AmigaOS and Unix.  
* **Container & Microservices Support**: Native integration with Docker, Podman, and other container runtimes for orchestration and deployment.  
* **Stack Extensibility**: Build on top of existing cloud stacks, hiding complexity while enhancing functionality.  
* **AI-Ready**: Tools and integrations for LLMs, AI models.

---

**Why Kin Legacy?**

Kin Legacy stands out by combining the flexibility of a web OS with the precision of DevOps and AI workflows:

* **Platform Independence**: Access your OS from any device, anywhere, via a browser.  
* **Open-Source Freedom**: Licensed under MIT (kernel core), LGPLv3 (modules/drivers), and AGPLv3 (GUI).  
* **Legacy Meets Innovation**: Builds on FriendOS 1.4, blending proven concepts with cutting-edge features.

---

**Getting Started**

Ready to explore Kin Legacy? Follow these steps to set up your own instance:

**Prerequisites**

* Bash, libssh2-1-dev, libssl-dev, MySQL server, PHP 7, libmysqlclient-dev, build-essential  

**Installation**

**Installation Overview**

Kin can be built from source by following a series of steps, starting with installing necessary dependencies like bash, libssh2-1-dev, and mysql-server. You'll then clone the repository from [GitHub](https://github.com/auraeinteractive/kin-legacy), build the core with specific configurations, set up a MySQL database, configure the system settings, and finally run the core to access it via a web browser.

**Step-by-Step Guide**

1. **Install Dependencies**: Use the command sudo apt-get install bash libssh2-1-dev libssh-dev libssl-dev libaio-dev mysql-server php7-cli php7-gd php7-imap php7-mysql php7-curl libmysqlclient-dev build-essential libmatheval-dev libmagic-dev libgd-dev libuv1 rsync valgrind-dbg libxml2-dev php7-readline cmake ssh make libsmbclient-dev libwebsockets-dev libsqlite3-dev to install required packages.  
2. **Clone Repository**: Run git clone https://github.com/auraeinteractive/kin-legacy and cd kin-legacy to get the source code.  
3. **Build Friend Core**: Add USE\_SSH\_THREADS\_LIB=0 and OPENSSL\_INTERNAL=1 to the Config file, then run make clean setup, make compile, and make install.  
4. **Set Up Database**: Create a MySQL user and database with commands like create user kin@localhost identified by "somepassword"; and configure access.  
5. **Configure Settings**: Edit build/cfg/cfg.ini using build/cfg/cfg.ini.example as a template, ensuring required options like database details and server ports are set.  
6. **Run and Access**: Navigate to build/ and run ./KinKore, then access via a web browser at http://localhost:6502 with default credentials (username: fadmin, password: securefassword).

---

**Configuration**

Customize Kin Legacy via build/cfg/cfg.ini. Key sections include:

* **Database**: Set login, password, host, dbname, port.  
* **FriendCore**: Configure fcport (default 6502), SSLEnable, etc.  
* **Security**: Adjust blocktimeout, blockattempts, and SSO settings.

See Configuring Kin (ConfiguringKin.md) for a full guide.

---

**Roadmap**

* Finalize v1.5.0 "Legacy" release.  
* Integrate advanced container orchestration (Docker Swarm, Kubernetes).  
* Expand AI tooling with prebuilt libraries.  
* Simplify SSO with OAuth and SAML support.  
* Publish administration guides and documentation in docs/.

---

**Contributing**

Kin Legacy thrives on community input\! To contribute:

1. Fork the repo.  
2. Create a feature branch (git checkout \-b feature/awesome-thing).  
3. Commit changes (git commit \-m "Add awesome thing").  
4. Push to your fork (git push origin feature/awesome-thing).  
5. Open a pull request.

See CONTRIBUTING.md for details (coming soon).

---

**License**

* **Kernel Core**: MIT  
* **Modules & Drivers**: LGPLv3  
* **GUI (Kin Workspace)**: AGPLv3

---

**Acknowledgments**

* Built on the foundation of [FriendOS](https://github.com/FriendUPCloud/friendup).  
* Inspired by Tripos/AmigaOS and Unix philosophies.  
* Tested with [BrowserStack](https://www.browserstack.com/).


