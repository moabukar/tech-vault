[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Tech Vault Interview Questions Bank

<p align="center">
  <img width="1000" src="./images/Tech-Vault.png">
</p>


Note: A documentation of carefully curated technical engineering questions by experienced Engineers who have conducted many interviews. These are amongst popular and important engineering questions to test knowledge of candidates in interviews. 

Any questions taken from external references are referenced [below](#references).  

## Table of Contents

- [X] [Vision 🚀](#vision)
- [X] [What is different in this repo compared to others? 🌟](#what-is-different-in-this-repo-compared-to-others)
- [X] [Contributing 🖊️](#contributing)
- [X] [DevOps 🛠](#devops)
    - [Linux 🐧](#small_blue_diamond-linux)
    - [Networking 🌐](#small_blue_diamond-networking)
    - [Git](#small_blue_diamond-git)
    - [AWS 🌩️](#small_blue_diamond-aws)
    - [Azure 🌩️](#small_blue_diamond-azure)
    - [Terraform 🏗️](#small_blue_diamond-terraform)
    - [Docker & K8s 🐳 🎻](#small_blue_diamond-docker--k8s)
    - [Ansible 🔧](#small_blue_diamond-ansible)
    - [CI/CD 🛠️](#small_blue_diamond-cicd)
    - [DevOps methodology, practices, & Agile](#small_blue_diamond-devops-methodology-practices--agile)
- [X] [System Design 🍥](#system-design)
    - [CDN & Caching ⚡](#small_blue_diamond-cdn--caching)
    - [Databases 📊](#small_blue_diamond-databases)
- [X] [Software Engineering](#software-engineering)
    - [General](#small_blue_diamond-general)
    - [Golang](#small_blue_diamond-golang)
    - [Python](#small_blue_diamond-python)
    - [Java](#small_blue_diamond-java)
    - [JavaScript](#small_blue_diamond-javascript-tsnodejs)
- [X] [Data](#data)
    - [Data Modelling & Schemas](#data-modelling-and-schemas)
    - [Data Architect](#data-architect)
    - [Data Engineering](#data-engineering)
    - [SQL](#sql)
    - [ETL & Data Pipelines](#etl-pipelines)
- [X] [Machine Learning 🤖](#machine-learning)
- [X] [Cyber Security & InfoSecurity 🛡️](#cyber-security--info-security)
- [X] [Interpersonal skills](#interpersonal--behavioural-questions)
- [X] [References](#references)

## Vision

- Coming from a non-technical background and without experience can be difficult for many. So I and my team have decided to create this project where all, non-technical and technical tech professionals, can have a place of reference to technical interview questions and interview prep. This is maintained by a lovely community. If you wish to contribute, feel free to do so. Read this for more info >> [How to Contribute](#contributing) 

## What is different in this repo compared to others?

1️⃣ Real questions asked by and of our Engineers (obviously reworded questions)

2️⃣ Scenario-based questions mirroring actual interviews

3️⃣ Up-to-date and relevant topics

4️⃣ Ongoing updates by experienced Engineers in their fields.

## Contributing 🖊️

- To contribute, please read our [Contributing Guidelines](CONTRIBUTING.md). For any fixes, updates or new additions, please make a pull-request (PR). Thank you!

## DevOps 🛠

### :small_blue_diamond: Linux

<details>
<summary>What is Linux and difference between UNIX and Linux?</summary>

Linux is an open-source operating system based on the UNIX architecture. It was created by Linus Torvalds in 1991. UNIX, on the other hand, is a family of operating systems that was developed in the late 1960s at Bell Labs. The main differences between UNIX and Linux are:

- **License:** UNIX is proprietary, while Linux is open-source and free to use.
- **Development:** UNIX is developed by a few organizations (like IBM, Sun Microsystems, and HP), while Linux has a widespread community-driven development process.
- **Portability:** Linux is more portable and can be used on a wide range of hardware, whereas UNIX is limited to specific hardware platforms.
- **User base:** Linux has a broader user base, including personal computers, servers, and embedded systems, while UNIX is primarily used in enterprise environments.
</details>

<details>
<summary>What is the Linux kernel?</summary>

The Linux kernel is the core component of the Linux operating system. It is responsible for managing the system's resources, providing an interface between hardware and software, and facilitating essential tasks such as memory management, process scheduling, and input/output (I/O) operations.

</details>

<details>
<summary>What are inodes in Linux?</summary>

Inodes in Linux are data structures that store important information about files on a file system. Each file or directory in a Linux file system has an associated inode that contains metadata such as the file's size, permissions, ownership, timestamps, and the location of the file's data blocks on the disk.

When you create a file or directory, the file system assigns a unique inode number to it. The inode number serves as an identifier for the file, allowing the file system to access the inode's information and manage the file accordingly.

Here's a summary of what inodes store:

- File type (regular file, directory, symbolic link, etc.)
- File permissions (read, write, execute)
- Ownership (user and group)
- Timestamps (creation, modification, and access times)
- File size
- Number of hard links to the file
- Location of the file's data blocks on the disk

It's important to note that inodes don't store the file's name or the actual file data. The file name is stored in the directory that contains the file, which associates the name with the inode number. The actual file data is stored in separate data blocks on the disk, and the inode points to these blocks.

Inodes play a crucial role in managing files and directories within a Linux file system, providing an efficient way to access and manipulate file metadata.

</details>


<details>
<summary>Explain the Linux boot process</summary>

The Linux boot process consists of several stages that initialize the system and load the operating system. Here's a brief overview of the key steps:

BIOS/UEFI: When the computer is powered on, the BIOS (Basic Input/Output System) or UEFI (Unified Extensible Firmware Interface) performs initial hardware checks and locates the boot device.

Bootloader: The bootloader (e.g., GRUB) loads from the boot device and presents the available operating systems to the user. It then loads the Linux kernel and initial RAM disk (initrd) into memory.

Kernel initialization: The Linux kernel initializes hardware, sets up memory management, starts essential processes, and mounts the initial RAM disk, which contains essential drivers and tools needed during the boot process.

Root file system: The kernel switches the root file system from the initial RAM disk to the actual root partition on the disk, typically identified by its UUID or device name (e.g., /dev/sda1).

Init process: The first user-space process, called init (e.g., Systemd, SysVinit, or Upstart), starts and manages system services and processes during the boot process and the system's runtime.

Runlevel/target: Init process initializes the predefined runlevel (SysVinit) or target (Systemd), which determines the services and processes to run at startup.

Login prompt: Once all services and processes specified in the runlevel/target have started, the system displays a login prompt, indicating that the boot process is complete and the system is ready for use.

</details>

<details>
<summary>What is a zombie process?</summary>

A zombie process, also known as a defunct process, is a process that has completed its execution but still remains in the process table. This happens because the parent process has not yet read the child process's exit status, which is required to clean up the child process's resources and remove its entry from the process table.

Zombie processes don't consume any system resources, except for the process table entry, which includes the process ID (PID) and the exit status. The operating system keeps this information so that the parent process can eventually retrieve the exit status and perform the necessary clean-up.

More info on zombie processes below:

Typically, a well-behaved parent process will use the wait() or waitpid() system call to collect the exit status of its child processes. However, if the parent process doesn't do this, either due to a programming error or because the parent is still running and hasn't reached the point where it collects the exit status, the child process becomes a zombie.

Zombie processes are usually harmless, but if a system accumulates a large number of them, it could exhaust the available PIDs and prevent new processes from being created. To resolve this issue, the parent process should be fixed to correctly handle its child processes' exit status, or if the parent process is unresponsive or terminated, a system reboot might be necessary.

</details>

<details>
<summary>Difference between soft links and hardlinks?</summary>

Soft links and hard links are two types of file links in a Unix-like file system, such as Linux. They serve different purposes and have distinct characteristics:

**Soft Link (Symbolic Link):**

- A soft link is a separate file that points to the target file or directory by storing its path.
- If the target file is deleted, the soft link becomes a "dangling" link, pointing to a nonexistent file.
- Soft links can span across different file systems and partitions.
- Soft links can link to directories as well as files.
- When a soft link is created, the link count of the target file doesn't change.
- Soft links have different inode numbers than their target files.

**Hard Link:**

- A hard link is a direct reference to the data on the disk, sharing the same inode as the target file.
- If the target file is deleted, the hard link still points to the data, and the data remains accessible until all hard links to it are removed.
- Hard links can only be created within the same file system or partition.
- Hard links cannot link to directories, only to files.
- When a hard link is created, the link count of the target file increases by one.
- Hard links have the same inode numbers as their target files.

In summary, a soft link is a more flexible but less reliable type of link that can point to files or directories across file systems, while a hard link is a more robust link that directly references the file's data, but is limited to the same file system and cannot link to directories.

</details>

<details>
<summary>What are namespaces and c-groups?</summary>

Namespaces and cgroups (control groups) are two Linux kernel features that play a crucial role in implementing process isolation and resource management, especially in containerization technologies like Docker.

**Namespaces:**

Namespaces are a feature that provides process isolation by creating separate instances of certain system resources, which can only be accessed by processes within the same namespace. This isolation helps ensure that processes running in one namespace don't interfere with processes in another namespace

There are several types of namespaces, including:

- PID namespace: Isolates process IDs, allowing each namespace to have its own set of PIDs.
- Mount namespace: Isolates the file system mount points, so that each namespace has its own mount tree.
- Network namespace: Isolates network resources, providing each namespace with its own network stack, including interfaces, routes, and firewall rules.
- IPC namespace: Isolates inter-process communication resources, preventing processes in one namespace from communicating with processes in another namespace.
- UTS namespace: Isolates system identifiers like hostname, allowing each namespace to have its own unique hostname.
- User namespace: Isolates user and group ID mappings, enabling each namespace to have its own set of user and group IDs.

**Cgroups (Control Groups):**

Cgroups are a kernel feature that enables the management and limitation of system resources, such as CPU, memory, and I/O, for a group of processes. Cgroups help ensure fair distribution of resources, prevent resource starvation, and enforce limits on resource usage. Some of the key features of cgroups include:

- Resource limiting: Allows setting limits on resource usage for a group of processes, such as maximum CPU usage, memory consumption, and disk I/O bandwidth.
- Prioritization: Enables setting priorities for resource allocation among different cgroups, helping to ensure that critical processes receive sufficient resources.
- Accounting: Collects resource usage statistics for processes in a cgroup, which can be useful for monitoring, profiling, and billing purposes.
- Control: Provides a mechanism to start, stop, or freeze processes in a cgroup, allowing for better management of process groups.

In combination, namespaces and cgroups provide the necessary isolation and resource management capabilities required to build and run containers, enabling multiple containers to coexist on the same host without interfering with each other or consuming excessive resources.

</details>

<details>
<summary>What are symbolic links?</summary>

Symbolic links, also known as soft links or symlinks, are a type of file link in Unix-like file systems, such as Linux. A symbolic link is a special file that points to another file or directory by storing its path. Symbolic links serve as a reference to the target file or directory, allowing users and applications to access the target through the link.

Symbolic links are useful in various scenarios, such as creating shortcuts, linking to files or directories in different locations, or maintaining multiple versions of a file or directory. Some key characteristics of symbolic links are:

Symbolic links can point to files or directories, and they can span across different file systems and partitions.
If the target file or directory is moved or deleted, the symbolic link becomes a "dangling" link, pointing to a nonexistent location.
Symbolic links have different inode numbers than their target files or directories.
When listing files with the ls command, symbolic links are usually indicated by an "l" at the beginning of the file permissions and an arrow (->) pointing to the target file or directory.

To create a symbolic link in Linux, you can use the ln command with the -s option, followed by the target file or directory and the desired symlink name:

```bash
ln -s target_file symlink_name

Example:

ln -s /path/to/original/file.txt link_to_file.txt

This command creates a symbolic link named link_to_file.txt that points to the file located at /path/to/original/file.txt.
```

</details>

<details>
<summary>What are the different types of permissions in Linux?</summary>

In Linux, there are three main types of permissions for files and directories, which determine how users can interact with them. These permissions are classified into categories based on the user's relationship to the file or directory: owner, group, and others (sometimes referred to as "world" or "public"). The three types of permissions are:

Read (r): Read permission allows a user to view the contents of a file or list the contents of a directory. For files, this means the user can open and read the file. For directories, the user can view the names of files and subdirectories within that directory.

Write (w): Write permission allows a user to modify the contents of a file or make changes within a directory. For files, this means the user can edit, append, or delete the file's content. For directories, the user can create, rename, or delete files and subdirectories within that directory. Note that deleting or renaming files within a directory requires write permission on the directory itself, not the individual files.

Execute (x): Execute permission allows a user to run a file as a program or script, or enter and access a directory. For files, this means the user can execute the file if it is a binary executable or script with a proper interpreter (e.g., a shell script or Python script). For directories, the user can change their current working directory to that directory, and access files and subdirectories within it.

These permissions are usually represented using a combination of letters (r, w, x) and dashes (-) for each of the three categories: owner, group, and others. For example, the permission string -rwxr-xr-- indicates:

- The first character - indicates it's a regular file (a d would indicate a directory).
- The owner has read (r), write (w), and execute (x) permissions: rwx.
- The group has read (r) and execute (x) permissions, but not write permission: r-x.
- Others have only read (r) permission: r--.

Alternatively, permissions can also be represented using octal notation (base-8), where read, write, and execute permissions are assigned values of 4, 2, and 1, respectively. The permissions are then represented by a three-digit number, with each digit corresponding to the owner, group, and others. For example, the permission string -rwxr-xr-- can be represented as 754 in octal notation.

</details>

<details>
<summary>What is swap space?</summary>

Swap space is a dedicated area on a storage device (such as a hard drive or SSD) that functions as an extension of a computer's physical memory (RAM). It is used by the operating system to temporarily store data that does not fit into RAM or when the system experiences memory pressure due to high RAM utilization.

When the operating system needs more memory than is physically available, it can move the least recently used or less important data (called pages) from RAM to the swap space. This process is called "paging" or "swapping out." By doing so, it frees up space in RAM for more critical or frequently accessed data. If the swapped-out data is required again, the operating system will move it back into RAM, possibly swapping out other data in the process. This is called "swapping in."

Swap space can be implemented as a dedicated swap partition or a swap file. In Linux, you can manage swap space using commands such as swapon, swapoff, and mkswap. To check the current swap space usage on a Linux system, you can use the free or swapon -s commands.

</details>


<details>
<summary>What is chmod, chown and chgrp in Linux?</summary>

**chmod**
chmod (change mode) is a command used to change the permissions of a file or directory. You can set read, write, and execute permissions for the owner, group, and others. Permissions can be represented in octal notation (numeric) or using symbolic notation (letters).

Example: For example, to give the owner read, write, and execute permissions, the group read and execute permissions, and others only read permission, you would use:
- Using octal notation: `chmod 754 file.txt`
- Using symbolic notation: `chmod u=rwx,g=rx,o=r file.txt`

**chown**

chown (change owner) is a command used to change the ownership of a file or directory. You can specify a new owner and an optional new group for the file or directory.

Example: For example, to change the owner of file.txt to the user john and the group to developers, you would use:

`chown john:developers file.txt`

**chgrp**

chgrp (change group) is a command used to change the group assignment of a file or directory. You can specify a new group for the file or directory.

Example: For example, to change the group of file.txt to the group developers, you would use:

`chgrp developers file.txt`


</details>

<details>
<summary>What are cronjobs?</summary>

Cronjobs, also known as cron jobs or simply cron, are scheduled tasks that run automatically at specified intervals on Unix-like operating systems, such as Linux. The term "cron" comes from the Greek word "chronos," which means "time." Cronjobs are commonly used for automating repetitive tasks, performing system maintenance, running periodic backups, and other similar activities.

Cronjobs are managed by a daemon called "cron," which runs in the background and executes the scheduled tasks. The configuration for cron jobs is stored in a series of files called "crontabs" (short for "cron tables"). Each user on the system can have their own crontab, and there is also a system-wide crontab.

For example, a cron job that runs every day at 3:30 AM would have the following entry in the crontab:

`30 3 * * * /path/to/command arg1 arg2`

To manage cron jobs, you can use the crontab command with various options:

- crontab -l: List the current user's cron jobs.
- crontab -e: Edit the current user's cron jobs using the default text editor.
- crontab -r: Remove the current user's cron jobs.
- crontab -u USER: Perform an operation (list, edit, or remove) on the specified user's cron jobs (requires root privileges).

</details>

Commands (basic & advanced):

<details>
<summary>What does chmod +x FILENAME do?</summary>

The command chmod +x FILENAME is used to add execute permissions to a file in a Linux or Unix-like system. By adding execute permissions, you allow the file to be run as an executable or script, provided it has the appropriate format and interpreter (e.g., a shell script, Python script, or compiled binary). The +x option specifically grants execute permission to the owner, group, and others (all users).

For example, if you have a script named myscript.sh and you want to make it executable, you would run:

`chmod +x myscript.sh`

</details>

<details>
<summary>Which command will show you free/used memory?</summary>

the free command is used to display information about free and used memory. The command provides details on total, used, free, shared, and available memory, as well as swap space usage.

To use the free command, simply type free in the terminal, followed by any desired options. Some common options include:

- -b: Display memory usage in bytes.
- -k: Display memory usage in kilobytes (default).
- -m: Display memory usage in megabytes.
- -g: Display memory usage in gigabytes.
- -h: Display memory usage in a human-readable format, automatically choosing the appropriate unit (e.g., B, K, M, or G).
- -t: Display a line containing the total amount of physical memory and swap space.
- -s N: Continuously display memory usage information, updating every N seconds.

For example, to display memory usage in a human-readable format, you would run:

`free -h`

</details>

<details>
<summary>Which command will show me the current directory I am in?</summary>

`pwd`

</details>

<details>
<summary>How can I terminate an on going process?</summary>

`kill -9 PID`

</details>


<details>
<summary>Write the command that will display all .yaml files including permissions of each file? ()</summary>

`find . -type f -name "*.yaml" -exec ls -l {} \`;

</details>


<details>
<summary>How can I found the status of a process?</summary>

`ps -p <PID>` >> for 1 process

`ps aux` >> display a detailed list of all running processes on the system

</details>

<details>
<summary>What is the command to show all open ports?</summary>

`netstat -tuln`

</details>


<details>
<summary>How do you find the process ID of a running process in Linux?</summary>

- `ps -ef | grep <process_name>`
- `ps -ef | grep chrome`


</details>

<details>
<summary>How do you find the dependencies of a package in Linux?</summary>

Debian based (Ubuntu):
- `apt depends <packagename>`
- `apt-cache depends <packagename>`

Red Hat based (Fedora, CentOS)
- `dnf repoquery --requires <packagename>`


</details>

Advanced:


<details>
<summary>Does free memory exist on Linux?</summary>

On Linux systems, the concept of "free memory" may be a bit nuanced due to how Linux manages memory. While the term "free memory" is commonly used, Linux uses a sophisticated memory management system that maximizes the utilization of available memory for optimal performance.

In Linux, free memory refers to the memory that is not currently being used by any active processes or cached by the system. However, this does not mean that the memory is entirely unused or wasted. Linux takes advantage of available memory by utilizing it for disk caching, buffering, and other optimizations to improve system performance.

When you check the memory usage using tools like free or top, you will see several memory-related metrics, including "free," "used," "buffers," and "cache." These metrics represent different aspects of memory usage:

</details>

<details>
<summary>How can I check if a server is down?</summary>

1) The ping command is a simple and widely used tool to check the connectivity between your Linux system and a remote server

`ping <server_address>`

2) The telnet command allows you to establish a connection to a specific port on a server. By attempting to connect to a server's port, you can determine if it's up and accepting connections

`telnet <server_address> <port>`

3) If the telnet command is not available on your system, you can use nc (netcat), which provides similar functionality. 

`nc -zv <server_address> <port>`

</details>

<details>
<summary>What is inside /proc?</summary>

The `/proc` directory is a virtual filesystem that provides an interface to access process-related information dynamically. It contains various files and folders that provide information about running processes and system configuration.

- It holds details about each running process in separate folders identified by their process IDs (PIDs).
- It also provides system-wide information such as CPU details, memory usage statistics, network-related data, and kernel parameters.
- The content of /proc changes dynamically based on the current state of the system and running processes.

</details>

<details>
<summary>A process on the system can no longer log files, what can I do?</summary>

- **Check file permissions**: Ensure that the process has the necessary permissions to write to the log files or directories. Verify the ownership and permissions of the log files, and make sure they are writable by the user or group associated with the process
  
- **Verify available disk space**:  Insufficient disk space can prevent the process from writing to log files
- **Restart the process**
- **Check log file size limit**: Some processes have limits on the maximum size of log files they can generate
- **Check file system or disk errors**: Perform a file system check (fsck) on the relevant file system or check for disk errors using appropriate tools. File system errors or disk issues can sometimes interfere with file writing.
- **Verify logging configuration**: Ensure that the log file path and other settings are correctly specified
- **Check for system-level logging issue**: If multiple processes are unable to log files, there might be a system-wide issue with the logging infrastructure. Check system logs (e.g., /var/log/syslog or /var/log/messages) for any relevant error messages or indications of logging problems.

</details>

<details>
<summary>What is LILO?</summary>

- LILO, short for "LInux LOader," is a boot loader program used in older versions of Linux distributions.
- LILO's main function is to load the Linux kernel into memory and initiate the boot process.It presents a menu to the user, allowing the selection of the desired kernel or operating system to boot (if multiple operating systems are installed).
- LILO writes itself to the Master Boot Record (MBR) of the disk, overwriting the existing boot loader.
- Its configuration file (/etc/lilo.conf) specifies the location of the Linux kernel image and boot parameters.
- LILO has been largely replaced by other boot loaders, particularly GRUB (Grand Unified Bootloader), which offers more advanced features and flexibility.
- GRUB has become the default boot loader for many Linux distributions.

</details>

<details>
<summary>What are syscalls in Linux and how do they work?</summary>

- Syscalls are the interface between user-space applications and the kernel in Linux.
- They allow user programs to request services and access operating system resources.
- User programs invoke syscalls using special instructions, triggering a switch from user mode to kernel mode.

</details>

<details>
<summary>What is no route to host?</summary>

- "No route to host" is an error message that can occur in Linux when attempting to establish a network connection to a remote host

</details>

<details>
<summary>What is the difference between a hard link and a symbolic link in Linux? (WITH hands-on example)</summary>

**Hard Link**

- Direct reference to an existing file or directory.
- Creates a new name or entry pointing to the same data.
- Both the original file and hard link refer to the same underlying data.
- Deleting one does not affect the other.
- Essentially multiple names for the same file.

**Symbolic Link (Symlink)**

- Special file that acts as a pointer or shortcut.
- Contains the path or location of the target file or directory.
- Resolves the path to the target when accessed.
- Can point to files or directories on different file systems or even non-existent or moved targets.
- Deleting the original file or directory doesn't automatically delete the symlink.
- Symlink becomes "broken" if the target is deleted or moved.

**Example**

Assume we have a file named "original.txt" with the content "Hello, world!" in the directory /home/user/.

Hard Link:
  - Create a hard link named "hardlink.txt" to "original.txt" using the ln command: `ln /home/user/original.txt /home/user/hardlink.txt`
  - Both "original.txt" and "hardlink.txt" now refer to the same file and share the same data.
  - If you modify the content of "original.txt", the changes will be visible when accessing "hardlink.txt" and vice versa.
  - Deleting either "original.txt" or "hardlink.txt" will not affect the other file.

Symbolic (soft) link:
  - Create a symbolic link named "symlink.txt" to "original.txt" using the ln command with the -s option: `ln -s /home/user/original.txt /home/user/symlink.txt`
  - "symlink.txt" is a separate file that acts as a pointer to "original.txt".
  - If you modify the content of "original.txt", the changes will be reflected in "symlink.txt".
  - Deleting "original.txt" will not automatically delete "symlink.txt", but accessing "symlink.txt" will result in a broken link if the target is not available.

In summary, with a hard link, you have multiple names for the same file sharing the same data, while with a symbolic link, you have a separate file acting as a pointer to another file or directory.

</details>

Linux Internals & Advanced (Scenario based questions):

<details>
<summary>Explain the linux boot process (detailed) </summary>

- BIOS/UEFI: When you power on the computer, the Basic Input/Output System (BIOS) or Unified Extensible Firmware Interface (UEFI) firmware is invoked. It performs hardware initialization, self-tests, and determines the boot device.

- Bootloader: GRUB (the most common Linux bootloader) loads the operating system into memory.

- Kernel Initialization: Once the bootloader hands off control, the Linux kernel is loaded into memory. It starts executing from its entry point. The kernel is responsible for managing system resources, such as memory, processes, devices, and file systems.

- Init Process: The first user-space process, known as the init process, is started by the kernel. The init process has a process ID (PID) of 1 and is responsible for initializing the system further. In modern Linux distributions that use systemd as the init system, the init process is replaced by the systemd process.

- Init System/Services: System services and daemons are launched.

- Login Manager: A login screen or prompt appears for user authentication.

- User Session: After login, the user's session starts with the desktop environment.

In summary, the boot process involves firmware initialization, bootloader loading the OS, kernel taking control, system initialization, login prompt, and user session start.

</details>

<details>
<summary>A process on the system can no longer log files, how would you debug?</summary>

- **Check File Permissions**: Verify that the process has proper permissions to write to the log files or directories. Ensure that the file permissions and ownership are correctly set to allow the process to write logs.
- **Review Log File Configuration**: Check the configuration file (e.g., /etc/rsyslog.conf or /etc/syslog-ng/syslog-ng.conf) to ensure that the log files and their destinations are correctly defined.
- **Check Disk Space**: Insufficient disk space can prevent file logging. Use the df command to check the available disk space. Ensure that the filesystem containing the log files has enough free space to accommodate new logs.
- **Check System Logs**: Review the system logs (/var/log/syslog, /var/log/messages, etc.) for any relevant error messages or indications of issues related to the logging process. Look for log entries related to the process and check if any error messages are reported.
- **Restart the Logging Service**: Restart the logging service associated with the process (if you use rsyslog for logging) >> `sudo systemctl restart rsyslog`

</details>

<details>
<summary>How can I check if a Linux system is healthy?</summary>

- **System Resource Usage**: 
  - Monitor CPU usage: Use tools like `top` or `htop` to check CPU usage and identify any processes consuming excessive CPU resources.
  - Check memory usage: Use commands like `free` or `top` to examine memory usage and ensure sufficient free memory is available.
  - Monitor disk usage: Use `df` or `du` commands to check disk space utilization and identify any partitions nearing capacity limits.

- **System Services and Processes:**: 
  - Check running processes: Use `ps` or `top` to view running processes and ensure critical services are active.
  - Verify system services: Use service management tools like `systemctl` (systemd) or `service` (init) to check the status of essential services.

- **System Logs**: 
  - Review system logs: Examine log files in `/var/log/` (e.g., `/var/log/syslog`, `/var/log/messages`) for any error or warning messages related to system components, applications, or hardware.
  - Monitor log files in real-time: Use the `tail` command with the -f option to track log files as new entries are added.

- **Network Connectivity**: 
  - Check network interfaces: Use `ifconfig` or `ip` command to verify the status and configuration of network interfaces.
  - Test network connectivity: Use `ping` or `traceroute` to test connectivity to remote hosts or check for network latency or packet loss.

- Hardware monitoring?
- Security and updates?
- Backup and recover?

</details>

<details>
<summary>What happens when you type "ls" or "cd" into a terminal? (go deep and talk about what happens behind the scenes - kernel level)</summary>

- The terminal program receives the command you typed and identifies the command and any arguments.

- The shell then searches for the location of the command binary within the directories specified in the `PATH` environment variable. It looks for an executable file with a matching name.

- Once the command binary is located, the shell initiates a system call, specifically the `execve()` system call, to load the command into memory and execute it.

- The kernel allocates memory for the command and sets up file descriptors for input, output, and error handling.

- The kernel performs a context switch, transitioning from the shell to the command.

- The command binary is loaded into memory, and its execution begins.

- As the command executes, it may make additional system calls to interact with the kernel. For example, the "ls" command might make system calls to read directory contents or retrieve file metadata.

- The command may manipulate the terminal's display using control codes.

- Once the command completes, the kernel returns control to the shell.

</details>

<details>
<summary>How can I check if a server is down?</summary>

- The ping command is a simple and widely used tool to check the connectivity between your Linux system and a remote server >> `ping <server_address>`
- The telnet command allows you to establish a connection to a specific port on a server. By attempting to connect to a server's port, you can determine if it's up and accepting connections >> `telnet <server_address> <port>`
-  If the telnet command is not available on your system, you can use nc (netcat), which provides similar functionality >> `nc -zv <server_address> <port>`

</details>

<details>
<summary>How are Linux processes killed on a lower level?</summary>

- In Linux, processes can be terminated or killed at a lower level using signals. Signals are software interrupts sent to a process to convey various notifications or requests. They can be used to terminate a process gracefully, forcefully, or perform other actions

  - SIGTERM (Signal 15): This is the default termination signal sent to a process when you use the kill command without specifying a signal. It politely requests the process to terminate and allows it to perform cleanup operations before exiting.

  - SIGKILL (Signal 9): This signal forcefully terminates a process. It does not allow the process to perform any cleanup or graceful shutdown procedures. The process is immediately terminated.

  - SIGINT (Signal 2): This signal is generated when you press Ctrl+C on the keyboard. It is typically used to interrupt or terminate a process that is running in the foreground.

  - SIGQUIT (Signal 3): Similar to SIGINT, this signal is generated when you press Ctrl+\ on the keyboard. It usually requests a process to terminate and provides a core dump for debugging purposes.

</details>

<details>
<summary>I have accidentally entered `cd/bin` and done `chmod 644 chmod` - how can I fix this?</summary>

**Method 1 - Copy the file from another system**:
- If you have compatible systems, you can always just grab a copy of chmod from another server using scp or rsync.

```sh
cd /bin
mv chmod chmod.orig
scp twin:/bin/chmod .
diff chmod chmod.orig
```

**Method 2 - Restoring from Backup**:

- If you have a recent backup of the affected system, you can restore the correct permissions of the `chmod` command by replacing it with the version from the backup. Copy the `chmod` binary from the backup location to the `/bin` directory, ensuring that the correct permissions are retained.

Method 3

</details>

<details>
<summary>How would you troubleshoot a network connectivity issue in Linux?</summary>

- **Check Network Configuration**: Verify that the network configuration is correct. Use commands like `ifconfig` or `ip` to check the status of network interfaces, IP addresses, subnet masks, and gateway settings.
- **Ping**: Use the ping command to test basic connectivity to a remote host or IP address. For example, `ping 8.8.8.8` pings Google's public DNS server. If the ping is successful, it indicates that network connectivity is established.
- **Check DNS Resolution**: If you are having trouble accessing websites by domain name, check if DNS resolution is functioning correctly. Use the `nslookup` or `dig` command to query DNS servers and verify if they are returning the correct IP addresses for the given domain
- **Check Routing**: Use the `traceroute` or `tracepath` command to trace the route packets take to reach a destination. It helps identify any network hops or routing issues along the path.
- **Firewall Configuration**: Review the firewall configuration to ensure it is not blocking the required network traffic. Check the rules in tools like `iptables`, `ufw`, or other firewall management tools.
- **Check Network Services**: Ensure that required network services, such as DHCP (Dynamic Host Configuration Protocol) or DNS, are running and functioning properly. Use commands like `systemctl` or `service` to check the status of specific services.
- **Inspect Network Logs**: Check system logs in `/var/log/` (e.g., `/var/log/syslog`, `/var/log/messages`) for any relevant error messages related to network interfaces, services, or connectivity issues.
- **Test Connectivity with Different Tools**: Use network troubleshooting tools like `netcat` (nc), `curl`, or `wget` to test connectivity to specific ports or services on remote hosts.


</details>

<details>
<summary>How do you troubleshoot a connectivity issue with a remote server in Linux?</summary>

- Check Network Connectivity >> `ping <server_ip_or_hostname>`
- Verify DNS Resolution >> `nslookup <server_hostname>` or `dig`
- Check Firewall Settings: Verify that your local firewall or any intermediate firewalls are not blocking the necessary network traffic. Temporarily disable the firewall or configure it to allow the specific ports or protocols required to communicate with the remote server.
- Verify Port Connectivity >> `telnet <server_ip_or_hostname> <port_number>`
- Trace Route: Use the traceroute or tracepath command to trace the network path to the remote server >> `traceroute <server_ip_or_hostname>`
- Review Server Logs: Examine the server's logs for any error messages or indications of connectivity issues. Check logs related to the specific services running on the server, such as Apache logs for web server issues.
- Check Server Services: Ensure that the necessary services on the remote server are running and properly configured

</details>

<details>
<summary>How do you view and edit the system logs in Linux?</summary>

- View logs >> `cat /var/log/syslog` - use SUDO
- Edit logs >> `vim /var/log/syslog` - use SUDO

</details>


<details>
<summary>Which command do you use to copy one file from one server to another?</summary>

- scp

</details>

<details>
<summary>Which command do you use to copy directories from one server to another?</summary>

- scp -r

</details>


### :small_blue_diamond: Networking

<details>
<summary>What is HTTP?</summary>

The Hypertext Transfer Protocol (HTTP) is the foundation of the World Wide Web, and is used to load webpages using hypertext links. HTTP is an application layer protocol designed to transfer information between networked devices and runs on top of other layers of the network protocol stack. A typical flow over HTTP involves a client machine making a request to a server, which then sends a response message.

HTTPS is an extension of the Hypertext Transfer Protocol. The S in HTTPS stands for “secure.” When a website is encrypted with TLS (or SSL), it uses Hypertext Transfer Protocol Secure (HTTPS). 

Basically, it’s HTTP with encryption. It is used to secure communication over a computer network and is widely used on the Internet. HTTPS encrypts and decrypts user page requests and the pages returned by the web server.

</details>

<details>
<summary>Difference between HTTP and HTTPS?</summary>

The most significant difference between the two protocols is that HTTPS is encrypted and secured using digital certificates, while HTML is not. When you visit a website using HTTPS, your connection to that site is encrypted. Any information you send or receive on that site is also encrypted.

Another difference between the protocols is that HTTPS uses port 443, while HTML uses port 80. Port 443 is the standard port for secured Hypertext Transfer Protocol (HTTPS). Port 80 is the default port for unsecured Hypertext Transfer Protocol.


</details>

<details>
<summary>How does a typical HTTP request look like?</summary>

An HTTP request is the way Internet communications platforms such as web browsers ask for the information they need to load a website.

Each HTTP request made across the Internet carries with it a series of encoded data that carries different types of information. A typical HTTP request contains:

1) HTTP version type
2) a URL
3) an HTTP method
4) HTTP request headers
5) Optional HTTP body

</details>

<details>
<summary>What is an HTTP method?</summary>

An HTTP method, sometimes referred to as an HTTP verb, indicates the action that the HTTP request expects from the queried server. For example, two of the most common HTTP methods are ‘GET’ and ‘POST’; a ‘GET’ request expects information back in return (usually in the form of a website), while a ‘POST’ request typically indicates that the client is submitting information to the web server (such as form information, e.g. a submitted username and password).

</details>

<details>
<summary>What are HTTP request headers?</summary>

HTTP headers contain text information stored in key-value pairs, and they are included in every HTTP request. These headers communicate core information, such as what browser the client is using and what data is being requested.

</details>

<details>
<summary>What is in an HTTP request body?</summary>

The body of a request is the part that contains the ‘body’ of information the request is transferring. The body of an HTTP request contains any information being submitted to the web server, such as a username and password, or any other data entered into a form.

</details>

<details>
<summary>What is in an HTTP response?</summary>

An HTTP response is what web clients (often browsers) receive from an Internet server in answer to an HTTP request. These responses communicate valuable information based on what was asked for in the HTTP request.

A typical HTTP response contains:

1) An HTTP status code
2) HTTP response headers
3) Optional HTTP body

</details>

<details>
<summary>What’s an HTTP status code?</summary>

HTTP status codes are 3-digit codes most often used to indicate whether an HTTP request has been successfully completed. Status codes are broken into the following 5 blocks:

- 1xx Informational
- 2xx Success
- 3xx Redirection
- 4xx Client Error
- 5xx Server Error

The “xx” refers to different numbers between 00 and 99.

Status codes starting with the number ‘2’ indicate a success. For example, after a client requests a webpage, the most commonly seen responses have a status code of ‘200 OK’, indicating that the request was properly completed.

If the response starts with a ‘4’ or a ‘5’ that means there was an error and the webpage will not be displayed. A status code that begins with a ‘4’ indicates a client-side error (it is very common to encounter a ‘404 NOT FOUND’ status code when making a typo in a URL). A status code beginning in ‘5’ means something went wrong on the server side. Status codes can also begin with a ‘1’ or a ‘3’, which indicate an informational response and a redirect, respectively.

</details>

<details>
<summary>What are HTTP response headers?</summary>

Much like an HTTP request, an HTTP response comes with headers that convey important information such as the language and format of the data being sent in the response body.

</details>

<details>
<summary>What is in an HTTP response body?</summary>

Successful HTTP responses to ‘GET’ requests generally have a body which contains the requested information. In most web requests, this is HTML data that a web browser will translate into a webpage.

</details>

<details>
<summary>TCP vs UDP</summary>

Protocols are rules that govern how data is formatted and sent over a network. TCP and UDP are two different methods for doing the same job: transferring data via the internet. They enable servers and devices to communicate so you can send emails, watch Youtube, play games, and browse web pages.

The main difference between TCP (transmission control protocol) and UDP (user datagram protocol) is that TCP is a connection-based protocol and UDP is connectionless. While TCP is more reliable, it transfers data more slowly. UDP is less reliable but works more quickly. This makes each protocol suited to different types of data transfers.

</details>

<details>
<summary>What is DNS?</summary>

The process of DNS resolution involves converting a hostname (such as www.google.com) into a computer-friendly IP address (such as 192.168.1.1). An IP address is given to each device on the Internet, and that address is necessary to find the appropriate Internet device - like a street address is used to find a particular home. When a user wants to load a webpage, a translation must occur between what a user types into their web browser (example.com) and the machine-friendly address necessary to locate the example.com webpage.

</details>

<details>
<summary>How does DNS work?</summary>

content HERE

</details>

<details>
<summary>What is TLS?</summary>

Content HERE

</details>

<details>
<summary>What are CIDR ranges?</summary>

Content HERE

</details>

<details>
<summary>What is ingress and egress traffic?</summary>

Content HERE

</details>

<details>
<summary>What is a switch vs a hub?</summary>

Content HERE

</details>

<details>
<summary>What is a switch vs a router?</summary>

Content HERE

</details>

<details>
<summary>What is HTTPS vs Websockets?</summary>

Content HERE

</details>

<details>
<summary>Explain how a 3 way handshake works?</summary>

Content HERE

</details>

<details>
<summary>Stateless vs Stateful firewalls?</summary>

Content HERE

</details>

<details>
<summary>What are VPCs?</summary>

Content HERE

</details>

<details>
<summary>What is subnetting?</summary>

Content HERE

</details>

<details>
<summary>What is DHCP?</summary>

Content HERE

</details>

Advanced + Scenario based questions:

<details>
<summary>When I type google.com into the browser, what actually happens? (go into as much detail as you can)</summary>

Content HERE

</details>

<details>
<summary>I can't reach a website, how can I troubleshoot? (use deep Linux + networking knowledge)</summary>

Content HERE

</details>

<details>
<summary>Can you break down the OSI model and what does it signify?</summary>

Content HERE

</details>

<details>
<summary>How does mTLS work and compare it to TLS?</summary>

Content HERE

</details>

<details>
<summary>Describe the TCP/IP connection process?</summary>

Content HERE

</details>

<details>
<summary>When and why would one use a TCP over UDP?</summary>

Content HERE

</details>

<details>
<summary>Data transfer between 2 hosts is extremely slow. How can you troubleshoot?</summary>

Content HERE

</details>

### :small_blue_diamond: Git

- What is Git?
  <details>
    <summary>Click here to view the answer</summary>
    
    Most widely used modern version control system in the world today. It is used to gather code contributions from multiple users in a single place (repository). Provides full history, workflow and allows for rollback of code and patching.
    
  </details>
- Difference between Git and SVN?
  <details>
    <summary>Click here to view the answer</summary>
    
    SVN and Git are both powerful version control systems that each use a different approach to managing and merging code changes. Git uses a distributed model, whereas SVN uses a centralized model.

    SVN’s centralized repository model makes it easier to manage contributions and contributors. Git does not support codebase access restrictions — a contributor who has access to the repository has access to the entire repository. SVN, by contrast, provides granular control, allowing for limits on particular contributors down to the directory, and file levels.

    The ability to work locally and offline is one major advantage to Git. SVN requires contributors to be connected to the main repository server, which essentially eliminates working offline.
    
    Git also outperforms SVN when it comes to merging and conflict resolution. Git has been designed for an open-source setting where numerous contributors may be working on the same parts of a codebase. To allow for this type of collaboration, Git has built up a robust system for resolving merge conflicts that makes the process smoother, and more manageable.

    
    
  </details>
- What is the basic Git workflow?
  <details>
    <summary>Click here to view the answer</summary>
    
    Working directory >   staging area >  local repo >   remote repo
                  git add           git commit    git push 
    
  </details>
- Difference between git pull and Git fetch
  <details>
    <summary>Click here to view the answer</summary>
    
    The key difference between git fetch and pull is that git pull copies changes from a remote repository directly into your working directory, while git fetch does not. The git fetch command only copies changes into your local Git repo. The git pull command does both.

    Benefit of git pull: The local Git repo is now in sync with the remote repo. The local filesystem has the latest, most up to date files.

    Benefit of git fetch: If you are actively working on files tracked by Git, but you still want to update your local repository with the latest changes from a remote repository, use the git fetch command.

    
  </details>
- What is git cherry-pick?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- What is the HEAD in Git?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- When do I use Git stash?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- What does git reset do?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- What is Git fork? What is difference between git fork, clone and branch?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- What is difference between `git stash pop` and `git stash apply`?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>

Advanced:
- I need to update my local repos, what commands do I use?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- I need to rollback to a previous commit and I don't need my recent changes, what do I use?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- How can I amend an older commit?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- What is the command to check the difference between two commits?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- When do you use `git rebase` instead of `git merge`?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details>
- Do you know how to undo a git rebase?
  <details>
    <summary>Click here to view the answer</summary>
    
    Content HERE
    
  </details
- How do you bring down updates from main branch if your local branch becomes stale?


### :small_blue_diamond: AWS

-----General--------
- What is AWS? 
- What are two services of AWS where you could store secrets?
- What is the relation between the Availability Zone and Region?
- What is auto-scaling?
- What services can help minimise a DDoS attack?
- What is an AMI?
- What are different types of load balancers?

-----Networking-----
- What is a VPC?
- How do Subnets work?
- What network object do you need to allow a server ingress from the internet?
- What are the different type of load balancers in AWS?
- Whate are subnets? and what are CIDRs?
- How can your resources in the VPC get access to the internet?


-----Scenario-based-----
- I want to create a 3 Tier Architecture. Can you explain step by step of how I can go about this?
- In VPC with private and public subnets, database servers should ideally be launched into which subnet?
- What are some security best pracites for EC2s?
- I created a web application with autoscaling. I observed that the traffic on my application is the highest on Wednesdays and Fridays between 9 AM and 7 PM. What would be the best solution for me to handle the scaling?
- You have an application running on your Amazon EC2 instance. You want to reduce the load on your instance as soon as the CPU utilization reaches 100 percent. How will you do that?


-----Others-----
- Name some managed runtimes for Lambda

### :small_blue_diamond: Azure

- What is Azure?
- What are ARM templates in Azure?
- What is Azure CDN?
- How is Azure App Service different from Azure Functions?
- How to define an Environment Variable on Azure using Azure CLI?
- How would you choose between Azure Blob Storage vs. Azure File Service?
- What is difference between Keys and Secrets in Azure Key Vault?
- What’s the difference between Azure SQL Database and Azure SQL Managed Instance?
- When should we use Azure Table Storage over Azure SQL?
- Explain what is the difference between Block Blobs, Append Blobs and Page Blobs in Azure?

Advanced:

- What to use: many small Azure Storage Blob containers vs one really large container with tons of blobs?


### :small_blue_diamond: Terraform

- What is IaC? What is Terraform?
- What is Terraform state
- What are most common Terraform commands?
- What is Terraform backend?
- What are modules in Terraform?
- What is Terragrunt?
- Explain the workflow of the core Terraform?
- Difference between Terraform, AWS CloudFormation and Azure ARM?
- What is the difference between Terraform and Ansible?
- What are provisioners in Terraform?
- How can two people using the Terraform cloud can create two different sets of infrastructure using the same working directory?
- What is a null resource in Terraform?
- Which command is used to perform syntax validation on terraform configuration files?
- How can I format my current directory of Terraform config files in the HCP format?



Advanced:
- I have 3 people in my team who want to work on the same AWS Infrastructure on Terraform as well as same state. What can I do to ensure there are no clashes?
- In a pipeline, where would you store the Terraform state?
- Can I test my terraform modules? If so, how can I test them? Is there a common framework used to Terraform modules?
- How does state file locking work?
- What is Checkov?
- How can I use Terraform in a pipeline?
- How can one export data from one module to another?
- How can you import existing resources under Terraform management?
- Which command can be used to reconcile the Terraform state with the actual real-world infrastructure?

### :small_blue_diamond: Docker & K8s


Container (Docker):
- What is a container and what are its fundamentals?
- What are c-groups and namespaces in Linux?
- What is Docker and how does it work?
- When do I use Docker Compose vs Docker Swarm and K8s?
- What is a Dockerfile used for?
- Can you explain the basic components of a Dockerfile?
    - What is a FROM in a Dockerfile used for?
    - What is a COPY in a Dockerfile used for?
    - What is a ADD in a Dockerfile used for?
    - What is a CMD & ENTRTPOINT in a Dockerfile used for?
- How is a container different from a virtual machine?
- How can I run a container?
- How can I stop and remove a container?
- How can I attach a shell to a terminal of a running container?
- What is a dangling image?
- What is Docker compose and when is it used?
- 

Advanced:
- What is the difference between COPY and ADD commands in a Dockerfile?
- What is the difference between CMD and RUN commands in a Dockerfile?
- What are some best practices to follow when running containers in production?

Container Orchestration (Kubernetes = K8s):

<details>
<summary>What is Kubernetes?</summary>

Kubernetes is a container orchestration tool that is used for automating the tasks of managing, monitoring, scaling, and deploying containerized applications. It creates groups of containers that can be logically discovered and managed for easy operations on containers.

</details>

<details>
<summary>- What problems does Kubernetes solve? </summary>

Content HERE

</details>

<details>
<summary>- What are the benefits of Kubernetes? </summary>

Automatic scheduling
Automated rollback
Horizontal scaling
Auto-healing capabilities

</details>

- What is the difference between Docker and K8s?
- What is a Pod and what does it do?
- How can containers within a pod communicate with each other?
- What is a K8s cluster ?
- What are deployments?
- What are stateful sets?
- How do you restrict pod-to-pod communication in a cluster?
- How can I rollback a deployment?
- What are namespaces? 
- What is the role of the kube-apiserver?


Advanced:

- Can you mention some good practices to follow when creating containers?
- Can you explain a simple K8s cluster architecture and the components within it?
- What happens when a master node fails? 
- What happens when a worker node fails?
- What is an Ingress controller?
- How can one build a highly availabe (HA) cluster in K8s?
- What is the role of ETCD in K8s?

### :small_blue_diamond: Ansible

- What is Ansible? 
- How does Ansible work?
- What is Ansible Galaxy?
- What are Ansible handlers?
- What is Ansible Vault?
- What aer Ansible collections?
- How do you get a list of Ansible predefined variables?
- How is Ansible playbook different from ad-hoc commands?
- What is the recommended for securing secret information used within Ansible playbooks?
- What templating language is directly supported within Ansible for creating dynamic playbooks?
- What protocol does Ansible use for communicating with client systems?
- What is an inventory file?


Advanced:

- Can you name some Ansible best practices? 
- How do you handle errors in Ansible?
- How do you test your Ansible roles and tasks?
- What is Molecule and how does it works?

### :small_blue_diamond: CI/CD

- 

### :small_blue_diamond: DevOps methodology, practices,  & Agile

- What is meant by continuous integratons?
- What are the advantages of DevOps?
- Can you describe some branching strategies you have used?
- What is the blue/green deployment pattern?


## System Design

### :small_blue_diamond: CDN & Caching

- What is a CDN and why would I use one?
- What are CDN edge servers?
- How does CDN caching work?
- What is cache invalidation? 
- What are some cache invalidation methods?
- What is a cache Hit?
- What is a cache Miss?
- Can you explain a caching workflow?


----

- What is the CAP Theorem?
- Explain the difference between horizontal scaling and vertical scaling?
- Difference between forward proxy and reverse proxy?
- What is Load Balancing and how does it work? How does it relate to reverse proxies?
- Name me some common load balancers
- What is a microservice architecture and when would I consider using one?


### :small_blue_diamond: Databases

- What is a database?
- What is DBMS (Database Management System)?
- What is the schema referred to in a Database?
- What are different types of databases?
- Advantages & Disadvantages of using relational databases?
- Advantages & Disadvantages of using NoSQL relational databases?
- What is a key-value database? What are some examples of this?
- What are graph databases? Name some examples?
- What is database replication?
- What is master-slave replication? And what is master-master replication?
- What is Synchronous vs Asynchronous replication?
- What are indexes in databases?
- How can one improve query performance by using index hunting?
- What do you understand by ‘Atomicity’ and ‘Aggregation’?
- What is database partitioning?
- 


Advanced:

- What are message queues? And what are message brokers?
- How does the publish-subscribe model work?
- Can you explain how an event-driven architecture works?
- What is an API Gateway? How is this different from load balancers?
- Explain why CDN (in)availability may be a problem for using WebSockets? 

## Software Engineering


### :small_blue_diamond: General

- What are some ways that you can version an API?
- What does it mean for an API to be idempotent?
- How can you implement idempotency in APIs?
- What are some ways you could authenticate an API?
- What are benefits of working with circuit breakers? 
- Define cascading failures and how to deal with those?
- How can you deploy an API without disrupting traffic?

### :small_blue_diamond: Golang

- What is Go?
- Why was the Go langauge created?
- What is a pointer?
- What is the difference between the = and := operator?
- What are goroutines?
- Does Go have exceptions?


Advanced:
- Implement a function that reverses a slice of integers?
- What are generics and how do they work?


### :small_blue_diamond: Python

- 

### :small_blue_diamond: Java

- 

### :small_blue_diamond: JavaScript (TS,nodeJS...)

- What is TypeScript?
- What are the differences between TypeScript and JavaScript?
- Why use TypeScript?
- What are the advantages of TypeScript?
- What are Types in TypeScript?
- What are Type Assertions in TypeScript?
- What are the Primitive data types?
- What are the special data types in TypeScript?
- What are interfaces in TypeScript?
- Interfaces Vs Types?


## Data

### Data Modelling and Schemas: 

- Define data modelling and the benefits of implementing a data model? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Data modeling is the process of creating a visual representation of either a whole information system or parts of it to communicate connections between data. Data modeling concepts create a blueprint for how data is organized and managed in your organization. Data models give developers and non-technical stakeholders a simplified way to have meaningful conversations about the needs of the business and how data insights can fuel better decision making.
    
    </details>


- What are some of the design schemas used when performing data modelling? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: Star Schema. Snowflake Schema. Galaxy Schema.
    
    </details>

- What are the three types of data models? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Entity models, relational and dimensional
    
    </details>

- What is a table (entity) and column (attribute)? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: A row in a database table is an entity. A column header of a database table is an attribute. 
    
    </details>


- What is normalisation/denormalisation and what is its purpose?

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Normalization is the technique of dividing the data into multiple tables to reduce data redundancy and inconsistency and to achieve data integrity. On the other hand, Denormalization is the technique of combining the data into a single table to make data retrieval faster.
    
    </details>


- What are the main relationships which can be found in a data model? (name 3)

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: one to one, one to many and many to many
    
    </details>


- Explain the two different types of design schemas (snowflake and star)? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Snowflake and star are two different types of design schemas used in data warehousing. In a snowflake schema, the data is organized into a hierarchy of tables, with each table having multiple child tables. In a star schema, the data is organized into a central fact table and several dimension tables that connect to it.
    
    </details>


- What is a data mart? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: A data mart is a subset of a larger data warehouse that is designed to serve a specific business function or department. It contains a smaller subset of the data found in the overall data warehouse. 
    
    </details>


- How would you describe granularity? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Granularity refers to the level of detail or specificity of data. It describes how finely the data is divided and recorded.
    
    </details>


- How does data sparcity impact aggregation of data sets/sources? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Data sparcity can impact the aggregation of data sets/sources by making it more difficult to obtain accurate and meaningful results. Sparse data can result in incomplete or inaccurate analyses, as well as a loss of insights and trends.
    
    </details>

- In the context of data modelling, what is the importance of metadata? How would you describe the role of metadata in data modelling? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: Metadata is important in data modelling because it provides additional information about the data being modelled. It helps to document the structure and relationships of the data, as well as its origin, quality, and meaning.
    
    </details>


- What is a DDL script? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: A DDL (Data Definition Language) script is a set of commands used to create, modify, or delete database objects such as tables, indexes, or views.
    
    </details>

- What is a fact and dimension? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: In a data model, a fact is a measurable event or transaction, while a dimension is a descriptive attribute of that event or transaction. For example, in a sales data model, a fact might be the quantity of a product sold, while dimensions could include attributes such as the date of the sale, the customer who made the purchase, or the location where the sale occurred.

    
    </details>

- What is an ERD? Entity relationship diagram?

    <details>
    <summary>Click here to view answer</summary>
    Answer: An ERD (Entity Relationship Diagram) is a visual representation of the relationships between entities (tables) in a database. It shows how the tables are related to each other and the nature of those relationships.

    
    </details>


- What are the differences between foreign and surrogate keys? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: Foreign keys are columns in a table that reference the primary key of another table. Surrogate keys are artificial primary keys that are created specifically for use in a database and have no inherent meaning outside of that context.
    
    </details>

- Desribe cardinality

    <details>
    <summary>Click here to view answer</summary>
    Answer: Cardinality refers to the number of relationships between entities in a data model. It describes how many instances of one entity can be related to another entity. Common cardinalities include one-to-one, one-to-many, and many-to-many.

    
    </details>

### Data Architect

- Please state an example of designing, creating, deploying and managing an end to end data architecture project?

    <details>
    <summary>Click here to view answer</summary>
    Answer: A company wants to implement a customer relationship management (CRM) system. The project would involve designing a data architecture to store customer data, creating the necessary databases and tables, and deploying the system. The data would need to be cleansed, transformed, and loaded into the new system. Ongoing management would involve monitoring the data for quality and making any necessary updates or modifications to the system.
    
    </details>

- What are the fundamental skills required for a data architect? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: Strong knowledge of data modelling and database design
    Expertise in database management systems (DBMS) and database administration
    Experience with data warehousing and business intelligence
    Proficiency in data integration, ETL (extract, transform, load) processes, and data migration
    Familiarity with programming languages and software development methodologies
    Excellent analytical and problem-solving skills
    Strong communication and collaboration abilities
    </details>


- What is a data block and a data file? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: A data block is the smallest unit of data that can be accessed or transferred from a database to memory. A data file is a physical storage unit used to store data in a database.
    </details>
    
- What is data warehousing? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: Data warehousing is the process of collecting, storing, and managing large amounts of data from various sources to support business intelligence and decision-making. It involves organizing the data into a centralized repository or data warehouse, where it can be queried and analyzed using business intelligence tools.
    </details>
   

- What are the main differences between 'a view' and 'a materialised view'? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: A view is a virtual table that is based on a select statement and does not store data. A materialized view, on the other hand, is a physical copy of a view that stores data in a table, making it faster to retrieve.
    </details>
   

- What is a junk dimension?

    <details>
    <summary>Click here to view answer</summary>
    Answer: A junk dimension is a single table that contains several low-cardinality attributes that are not related to any specific dimension. It is used to reduce the number of dimension tables in a data warehouse and simplify the schema design.
    </details>

- Please explain in detail data warehousing architecture

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    The source layer, where data is collected from various sources and stored in staging tables.
    The integration layer, where data is cleansed, transformed, and combined into a single format for loading into the data warehouse.
    The storage layer, where the data is stored in a central repository or data warehouse.
    The access layer, where business intelligence tools and applications can retrieve the data for analysis and reporting.
    </details>
 

- What are the different types of integrity constraints? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Entity integrity: ensures that each row in a table has a unique identifier.
    Referential integrity: ensures that relationships between tables are maintained and that foreign keys reference primary keys.
    Domain integrity: ensures that data values meet specific constraints, such as data type or format requirements.
    User-defined integrity: allows users to define their own constraints based on specific business rules or requirements.
    </details>

- Why do data architects enforce and monitor data compliance standards in data systems? 

   <details>
    <summary>Click here to view answer</summary>
    Answer: Data architects enforce and monitor data compliance standards in data systems to ensure that data is accurate, complete, and secure. This helps to maintain data quality and prevent data breaches or other security risks.
   </details>


- Differentiate between OTLP and OLAP

   <details>
    <summary>Click here to view answer</summary>
    Answer: OLTP (Online Transaction Processing) systems are designed for real-time transactional processing and are typically used for day-to-day business operations. OLAP (Online Analytical Processing) systems are designed for data analysis and reporting and are typically used for business intelligence and decision-making.
    </details>


- How do you design and implement a data warehouse? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Analyze business requirements and identify data sources.
    Develop a conceptual data model and logical data model.
    Design the physical data model and schema.
    Develop ETL processes to extract, transform, and load data into the warehouse.
    Implement the database and BI tools.
    Test and validate the system.
    Deploy and maintain the system.
    </details>

- How do you handle data quality issues? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: To handle data quality issues, data architects can implement data profiling and data cleansing processes. Data profiling involves analyzing the data to identify any issues or inconsistencies, such as missing or duplicate data, incorrect data types, or invalid values. Data cleansing involves correcting these issues and ensuring that the data is accurate and complete.
    </details>

- How do you optimise data models for performance? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Normalize the data to reduce redundancy and improve consistency.
    Denormalize the data to improve query performance and simplify the schema.
    Partition large tables to improve query performance.
    Use appropriate indexing to speed up queries.
    Optimize queries to reduce the amount of data that needs to be processed.
    </details>

- Describe your familiarity with big data technologies such as Hadoop and Spark

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Hadoop is an open-source software framework that is used to store and process big data in a distributed computing environment. It uses a file system called Hadoop Distributed File System (HDFS) to store data across multiple machines and a processing engine called MapReduce to distribute processing tasks across the cluster. Hadoop is particularly useful for handling unstructured and semi-structured data, such as log files, social media data, and sensor data.

    Spark is another open-source software framework that is designed to handle big data processing tasks in real-time. Spark is built on top of Hadoop and provides a more flexible and efficient processing engine than MapReduce. It supports various data processing tasks, including batch processing, stream processing, machine learning, and graph processing. Spark is particularly useful for handling large datasets that require real-time analysis, such as financial trading data, social media data, and sensor data.
    </details>

- How do you go about gathering requirements for a new data project? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Meet with stakeholders to understand their business needs and goals.
    Identify the data sources and types of data that will be needed.
    Develop a data model based on the business requirements.
    Define the data quality and security requirements.
    Determine the performance and scalability requirements.
    Establish a project timeline and budget.
    </details>

- How do you hamdle conflicting priorities when working on multiple projects? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: To handle conflicting priorities when working on multiple projects, data architects can prioritize based on business impact, urgency, and feasibility. Communication with stakeholders and project managers can also help to ensure that expectations are clear and aligned.
    </details>

- Which software and design patterns are you familiar with? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Relational database management systems (RDBMS) such as Oracle and SQL Server.
    NoSQL databases such as MongoDB and Cassandra.
    Data integration tools such as Informatica and Talend.
    Data visualization and business intelligence tools such as Tableau and Power BI.
    Design patterns such as the star schema and snowflake schema for data warehousing.
    </details>

### Data Engineering

- What made you choose data engineering and what does it mean to you?

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Explaining the reasons behind choosing data engineering...
    Data engineering means the process of designing, building, maintaining, and managing data architecture and infrastructure. It involves transforming data from different sources into a format that can be easily analyzed, processed, and stored.
    </details>

- How would you define data engineering? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Data engineering is the process of designing, building, maintaining, and managing data infrastructure that allows organizations to efficiently store, process, and analyze large volumes of data. It involves working with different data sources, transforming data into a format that is suitable for analysis, and ensuring that data is stored securely and accessed efficiently.
    </details>- What are data engineers responsible for? 

- What is the difference between a data architect and a data engineer? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    A data architect is responsible for designing the overall data architecture and creating data models, while a data engineer is responsible for implementing the data architecture and building data pipelines.
    </details>
    
- What are data engineers responsible for? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Data engineers are responsible for designing and maintaining the data infrastructure, developing and maintaining data pipelines, ensuring data quality, optimizing data storage and retrieval, and ensuring data security. They work closely with data scientists and analysts to ensure that the data is available, reliable, and ready for analysis.
    </details>

- What is the difference between structured ,semi structured and unstructured data?

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Structured data is organized and well-defined, such as data in a relational database. Semi-structured data has some structure, but it is not organized in a rigid schema, such as JSON or XML data. Unstructured data has no predefined structure, such as text documents or images.
    </details>


- Describe differences between a data warehouse and an operational database

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    An operational database is designed for transactional processing and supports real-time data updates, while a data warehouse is designed for analytical processing and supports complex queries and reporting. Data warehouses typically store historical data and provide a consolidated view of data from multiple sources, while operational databases store current data and support day-to-day operations.
    </details>

- How would you increase the revenue of a business using data analytics and big data? 

   <details>
    <summary>Click here to view answer</summary>
    Answer: 
    By using data analytics and big data, businesses can identify patterns and trends in customer behavior, optimize pricing and promotions, identify new market opportunities, and improve operational efficiency. These insights can be used to develop new products and services, target marketing campaigns more effectively, and improve customer satisfaction, which can all lead to increased revenue.
    </details> 

- What are the advantages of using skewed tables in hive? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Using skewed tables in Hive can improve query performance by reducing the amount of data that needs to be processed. Skewed tables can be used to optimize queries that have high cardinality columns, where a small number of values dominate the distribution of data.
    </details>     

- Explain the hive data model and its components

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Hive is a data warehousing tool that provides a SQL-like interface for querying large datasets stored in Hadoop. The Hive data model includes tables, partitions, buckets, and views. Tables are the basic unit of storage in Hive, and partitions are used to divide tables into smaller, more manageable segments. Buckets are a way of organizing data within partitions to improve query performance, and views are virtual tables that can be used to simplify complex queries.
    </details>     

- Why is using a distributed system important in hadoop? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Using a distributed system in Hadoop is important because it allows for the processing of large amounts of data by dividing the workload across multiple nodes in a cluster. This enables faster processing times and the ability to handle large-scale data processing tasks that would be impossible to do on a single machine. A distributed system also provides fault tolerance and scalability, allowing for easy scaling up or down of resources as needed.
    </details>     
    
- Name the core features of hadoop

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    The core features of Hadoop include:
    Hadoop Distributed File System (HDFS) for distributed storage of data
    MapReduce for distributed processing of data
    YARN (Yet Another Resource Negotiator) for cluster resource management
    Hadoop Common, which provides the libraries and utilities needed for Hadoop to function
    </details>     

- Define hadoop streaming

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Hadoop streaming is a utility in Hadoop that allows developers to use scripts or programs written in any language that can read and write to standard input and output as MapReduce jobs. It enables developers to use languages other than Java, the primary language used in Hadoop, for data processing tasks.
    </details>     
    
- What is data locality? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Data locality is the principle that when processing data in a distributed system, the processing task should be performed on a node where the data is stored or is easily accessible. This reduces network traffic and improves processing performance by minimizing the amount of data that needs to be transferred across the network.
    </details>     

- What does Context object do in Hadoop and why is it important? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    The Context object in Hadoop is used to provide information to MapReduce tasks about the state of the job and the environment in which it is running. It allows MapReduce tasks to interact with the job configuration and provides access to counters for tracking the progress of the job. The Context object is important because it provides a mechanism for MapReduce tasks to communicate with each other and with the Hadoop framework.
    </details>     

- Name the three reducer phases in hadoop
    
    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    The three reducer phases in Hadoop are:
    Shuffle: where the data is sorted and partitioned before being sent to the reducers
    Sort: where the data is sorted by key before being passed to the reducer
    Reduce: where the data is processed and output is written to the Hadoop Distributed File System (HDFS)
    </details>     

- What do args and kwargs commands do? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    args and kwargs are used in Python to pass a variable number of arguments to a function. args is used to pass a tuple of positional arguments, while kwargs is used to pass a dictionary of keyword arguments.
    </details>     

- List the differences between tuples and lists

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Tuples and lists are both used to store sequences of values in Python, but there are several key differences between them. Tuples are immutable, meaning that they cannot be changed after they are created, while lists are mutable. Tuples are also more memory-efficient than lists and can be used as keys in dictionaries, while lists cannot. Additionally, tuples are often used to represent fixed structures with a specific number of elements, while lists are more flexible and can have any number of elements.
    </details>     

- What are the advantages of working with big data on the cloud?

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Working with big data on the cloud offers several advantages, including:
    Elastic scalability, allowing for easy scaling up or down of resources as needed
    Reduced hardware and infrastructure costs
    Increased accessibility and collaboration, with data stored in a centralized location accessible from anywhere with an internet connection
    Improved security and data backup, with data stored on secure cloud servers and automatic backup and disaster recovery options
    </details>      

- Can you describe what happens when a data block is corrupted? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    When a data block is corrupted in Hadoop, the NameNode detects the corruption during a routine block scan and marks the block as corrupted in its metadata. The NameNode then replicates the block from another replica or source, and the corrupted replica is deleted. The DataNode that stored the corrupted block is also notified to delete the corrupted replica. The JobTracker is then notified of the corrupted block, and it reschedules any tasks that were using the corrupted block to use a healthy replica instead.
    </details>

- How would you explain file permissions in hadoop? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    In Hadoop, file permissions are used to control access to files in the Hadoop Distributed File System (HDFS). There are three types of permissions: read, write, and execute, which can be set for the owner of the file, the group the owner belongs to, and all other users. The file owner can set the permissions using the chmod command, and the permissions can be viewed using the ls command with the -l option. Properly setting file permissions is important for ensuring that only authorized users can access or modify sensitive data.
    </details>

- Which process would you follow to add a node to a cluster? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    To add a node to a Hadoop cluster, the following process would be followed:

    Set up the new node with the same version of Hadoop as the existing nodes in the cluster.

    Configure the Hadoop environment variables and networking settings on the new node to match the existing nodes.

    Add the new node to the cluster's hosts file and update the DNS settings as needed.

    Start the Hadoop services on the new node and ensure that it can communicate with the other nodes in the cluster.

    Use the Hadoop command-line tools to add the new node to the cluster's configuration files, such as hdfs-site.xml and mapred-site.xml.

    Restart the Hadoop services on the existing nodes in the cluster to ensure that they recognize the new node.
    </details>

- Can you list python libraries which can facilitate efficient data processing?
    
    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Python has several libraries that can facilitate efficient data processing, including:
    NumPy: a library for numerical computing that provides fast and efficient operations on arrays and matrices.
    Pandas: a library for data manipulation and analysis that provides high-performance, easy-to-use data structures and tools for working with tabular data.
    Matplotlib: a library for data visualization that provides a wide range of plotting tools and styles.
    Scikit-learn: a library for machine learning that provides tools for data mining and data analysis.
    Dask: a library for parallel computing that provides an interface for working with large datasets and distributed computing frameworks like Hadoop and Spark.

    </details>

- What challenges came up during your recent project, and how did you overcome these challenges?
    
    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Some common challenges that can arise during a data engineering project include data quality issues, hardware and infrastructure limitations, and scaling issues. To overcome these challenges, data engineers may use techniques like data cleansing and transformation, cloud-based infrastructure, and distributed computing frameworks like Hadoop and Spark.

    </details>

- Have you ever transformed unstructured data into structured data? and how did you do it? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Transforming unstructured data into structured data is a common task for data engineers. The process typically involves using techniques like text mining, natural language processing, and machine learning to extract useful information from unstructured data sources like text files and log files. Once the data has been extracted and transformed, it can be loaded into a structured data store like a database or data warehouse for further analysis.
  
    </details>

- Can you tell me about NameNode? What happens if NameNode crashes or comes to an end?
    
    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    The NameNode is a key component of the Hadoop Distributed File System (HDFS). It is responsible for managing the metadata of the files stored in the HDFS, including the location and attributes of each block of data. The NameNode maintains a directory tree of all files in the HDFS and keeps track of the location of each block across the cluster.

    If the NameNode crashes or becomes unavailable, the HDFS becomes read-only until the NameNode is restored or replaced. During this time, no new data can be written to the HDFS, but existing data can still be read. To recover from a NameNode failure, the administrator can either restart the failed NameNode or replace it with a new one. In either case, the new NameNode must be initialized with a backup of the metadata stored in the secondary NameNode, which acts as a hot standby for the primary NameNode. Once the new NameNode is operational, it takes over the responsibility of managing the metadata of the HDFS, and the cluster can resume normal operations.
    </details>

- How to achieve security in Hadoop?

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Hadoop provides several mechanisms to achieve security in the cluster, including authentication, authorization, and data encryption. Some of the ways to achieve security in Hadoop are:

    Kerberos authentication: Hadoop can integrate with Kerberos to provide secure authentication for users and services in the cluster. This ensures that only authorized users can access sensitive data and services.

    Access control lists (ACLs): Hadoop supports ACLs, which allow administrators to control access to files and directories in the HDFS. ACLs can be used to grant or deny specific permissions to individual users or groups.

    Encryption: Hadoop supports data encryption at rest and in transit. Data can be encrypted using industry-standard encryption algorithms like AES, and keys can be managed using key management services like Key Management Service (KMS).

    Firewall and network security: Hadoop clusters should be protected by firewalls to prevent unauthorized access from outside the cluster. Network security measures like Virtual Private Network (VPN) can also be used to secure data transmission across the cluster.

    Auditing and monitoring: Hadoop provides tools for auditing and monitoring cluster activities, which can help identify security breaches and anomalies in the system.
    </details>

- What is FIFO Scheduling? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    FIFO scheduling is a scheduling algorithm used in Hadoop that stands for First In, First Out. In this scheduling algorithm, the tasks are executed in the order in which they are submitted to the JobTracker. The first task submitted to the JobTracker is the first one to be executed, followed by the second task, and so on. This scheduling algorithm is simple and easy to implement, but it may not be the most efficient algorithm for all workloads. In particular, it can lead to long wait times for high-priority jobs if lower-priority jobs are submitted first. Other scheduling algorithms like Fair Scheduler and Capacity Scheduler are also available in Hadoop to address these issues.
    </details>

### SQL

- How can you deal with duplicate data points in an SQL query?

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    To deal with duplicate data points in an SQL query, you can use the DISTINCT keyword in the SELECT statement. The DISTINCT keyword filters out duplicate values from the result set, returning only unique values. Alternatively, you can use the GROUP BY clause in combination with an aggregate function such as COUNT() or SUM() to group the duplicate values together and perform calculations on them.
    </details>

- List objects that are created via the CREATE statement in SQL

   <details>
    <summary>Click here to view answer</summary>
    Answer: 
    Objects that can be created using the CREATE statement in SQL include tables, views, indexes, sequences, procedures, functions, and triggers.
    </details>

- How would you see the database structure in SQL? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    In SQL, you can use the DESCRIBE statement to see the structure of a specific table, which shows the names, data types, and constraints of the columns in the table. Additionally, you can use the SHOW TABLES statement to see a list of all tables in the current database.
    </details>

- How would you search for a specific string in a column? 

    <details>
    <summary>Click here to view answer</summary>
    Answer: 
    To search for a specific string in a column, you can use the LIKE operator in a SELECT statement. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. For example, the following SQL query selects all rows from the "customers" table where the "contact_name" column contains the string "John":


    SELECT * 

    FROM customers

    WHERE contact_name LIKE '%John%';

    </details>

- What are the differences between DDL, DML and DCL?

    <details>
    <summary>Click here to view answer</summary>
    DDL (Data Definition Language) is used to define the database schema and includes commands such as CREATE, ALTER, and DROP. DML (Data Manipulation Language) is used to manipulate the data in the database and includes commands such as SELECT, INSERT, UPDATE, and DELETE. DCL (Data Control Language) is used to manage user access permissions and includes commands such as GRANT and REVOKE.
    </details>

- Difference between SQL and MySQL? 

    <details>
    <summary>Click here to view answer</summary>
    SQL (Structured Query Language) is a programming language used to manage relational databases. MySQL is a popular open-source relational database management system that uses SQL as its standard programming language.
    </details>

- How is a RDBMS different to a DBMS? 

    <details>
    <summary>Click here to view answer</summary>
    An RDBMS (Relational Database Management System) is a type of DBMS (Database Management System) that organizes data into one or more tables with a predefined structure, and uses relationships between tables to store and retrieve data. A DBMS, on the other hand, can be any system that manages data, including hierarchical, network, and object-oriented databases.
    </details>

- What is a self join? name other join commands

    <details>
    <summary>Click here to view answer</summary>
    A self join is a join where a table is joined with itself. It is useful when a table contains a foreign key that references its own primary key. Other join commands include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
    </details>

- What is the SELECT statement? 

    <details>
    <summary>Click here to view answer</summary>
    The SELECT statement is used to retrieve data from one or more tables in a database. It is the most commonly used SQL statement and is used to retrieve specific columns and/or rows that match a specified condition.
    </details>

- What are the CRUD commands? 

    <details>
    <summary>Click here to view answer</summary>
    CRUD (Create, Read, Update, Delete) commands are used to manipulate data in a database. CREATE is used to create new records, READ is used to retrieve records, UPDATE is used to modify existing records, and DELETE is used to delete records.
    </details>

- What are UNION, MINUS and INTERSECT commands? 

    <details>
    <summary>Click here to view answer</summary>
    UNION, MINUS, and INTERSECT are set operators that allow combining, subtracting, and intersecting results from two or more SELECT statements in SQL.

    UNION: returns the combined results of two or more SELECT statements, removing duplicates. The number of columns and their data types must be the same in all SELECT statements.

    MINUS (also known as EXCEPT in some versions of SQL): returns the rows from the first SELECT statement that are not present in the second SELECT statement.

    INTERSECT: returns only the rows that are common to both SELECT statements.

    These set operators can be useful in situations where you need to combine, subtract or compare data from multiple tables or queries.
    </details>

- How would you load data into tables using SQL? 

    <details>
    <summary>Click here to view answer</summary>
    Data can be loaded into tables using SQL by using the "INSERT" statement. This statement is used to add one or more records to a table. The syntax for inserting data into a table is as follows:


    INSERT INTO table_name (column1, column2, column3, ...)
    
    VALUES (value1, value2, value3, ...);

    In this syntax, "table_name" is the name of the table where data needs to be inserted, and "column1, column2, column3, ..." are the names of the columns where data needs to be inserted. "value1, value2, value3, ..." are the values that need to be inserted in the respective columns.
    </details>

- What is PostgreSQL?

    <details>
    <summary>Click here to view answer</summary>
    PostgreSQL is a powerful open-source relational database management system (RDBMS) that supports a wide range of features including transactions, sub-selects, triggers, views, and foreign keys. It is designed to be highly scalable, and can handle large amounts of data and concurrent users. PostgreSQL is known for its stability, reliability, and data integrity.
    </details>

- Explain the character manipulation functions in SQL

    <details>
    <summary>Click here to view answer</summary>
    Character manipulation functions in SQL are used to modify strings in a database. These functions include:

    CONCAT: Used to concatenate two or more strings.
    
    UPPER and LOWER: Used to convert a string to uppercase or lowercase respectively.
    
    SUBSTRING: Used to extract a substring from a given string.
    
    LENGTH: Used to get the length of a string.
    
    TRIM: Used to remove leading or trailing spaces from a string.
    
    REPLACE: Used to replace a substring within a string with a new substring.

    </details>

- What is the difference between RANK and DENSE_RANK() functions? 

    <details>
    <summary>Click here to view answer</summary>
    Character manipulation functions in SQL are used to modify strings in a database. These functions include:

    The RANK() and DENSE_RANK() functions are used to assign a rank to each row in a result set based on the values in one or more columns. The main difference between the two functions is how they handle ties.

    The RANK() function assigns the same rank to tied rows, and leaves gaps in the ranking sequence. For example, if two rows have the same value and are assigned rank 2, the next row will be assigned rank 4.

    The DENSE_RANK() function, on the other hand, assigns the same rank to tied rows, but does not leave gaps in the ranking sequence. For example, if two rows have the same value and are assigned rank 2, the next row will be assigned rank 3. 

    </details>

- What are tables and fields? 

    <details>
    <summary>Click here to view answer</summary>
    Tables are the fundamental objects in a database, where data is stored in rows and columns. A table is made up of one or more columns, which define the type of data that can be stored in each row of the table. Each column has a name and a data type.

    Fields, also known as columns, are the individual pieces of data stored in a table. Each field has a name, a data type, and a value.
    </details>

- What is a schema in a SQL server? 

    <details>
    <summary>Click here to view answer</summary>
    A schema in a SQL server is a logical container for database objects, such as tables, views, indexes, and stored procedures. It is a way to organize database objects into groups and assign permissions to those groups. A schema can be used to separate database objects into logical categories, and can be used to isolate different applications or users from each other.
    </details>

- How would you create a table with 4 columns? 

    <details>
    <summary>Click here to view answer</summary>
    To create a table with 4 columns, you would use the "CREATE TABLE" statement, with the column names and data types specified as follows:

    CREATE TABLE my_table (
    
    column_1 datatype,
    
    column_2 datatype,
    
    column_3 datatype,
    
    column_4 datatype
    
    );

    </details>

- What is a CASE statment? 

    <details>
    <summary>Click here to view answer</summary>
    A CASE statement is a control flow structure in SQL that allows you to add conditional logic to a query. It evaluates a set of conditions and returns a value based on the first true condition. The basic syntax of a CASE statement is:

    CASE 
    
    WHEN condition_1 THEN result_1
    
    WHEN condition_2 THEN result_2
    
    ...
    
    ELSE result_n
    
    END

    </details>

- Summarise differences between SQL and NoSQL

    <details>
    <summary>Click here to view answer</summary>
    SQL (Structured Query Language) and NoSQL (Not Only SQL) are two types of database management systems that differ in their data model, storage architecture, and query language.

    SQL databases are relational databases that store data in tables with fixed schemas. They use SQL as the query language to perform operations like CRUD (Create, Read, Update, Delete) on the data. SQL databases are known for their ability to handle complex queries and transactions, and for their strong consistency and ACID (Atomicity, Consistency, Isolation, Durability) properties. Examples of SQL databases include MySQL, Oracle, and PostgreSQL.

    On the other hand, NoSQL databases are non-relational databases that store data in flexible schemas, such as key-value pairs, documents, or graphs. They typically use a query language other than SQL, such as JSON or MongoDB's query language, to retrieve and manipulate data. NoSQL databases are known for their scalability, high availability, and ability to handle unstructured and semi-structured data. However, they may sacrifice consistency and durability for performance and scalability. Examples of NoSQL databases include MongoDB, Cassandra, and Couchbase.

    </details>
    
- Difference between NOW() and CURRENT_DATE()
- What is a BLOB and TEXT in MySQL?
- How do you remove duplicate rows in SQL? 
- How do you create a stored in procedure in SQL?
- What is the difference between CHAR, VARCHAR datatypes in SQL? 
- What are constraints in SQL? 
- Differences in DELETE and TRUNCATE statements? 
- What is data integrity? 
- What do you understand by query optimisation? 
- What are entities and relationships? 
- Name some aggregate functions which are commonly used in SQL
- What are the syntax and use of the COALESCE function?
- What is the ACID property in a database?
- What is a “Trigger” in SQL?
- What is a subquery in SQL?
- What is a CLAUSE in SQL?
- What is the need for a MERGE statement?
- How can you fetch common records from two tables?
- What are aggregate and scalar functions?
- What are Views used for?
- What are Local and Global variables?


### ETL & Data Pipelines & more

- How would I go about troubleshooting pipelines?



## Machine Learning

- 


## Cyber Security & Info Security

- What is a firewall, and how does it work?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A firewall is a network security device that monitors and controls incoming and outgoing network traffic based on predetermined security rules. It can be hardware, software, or a combination of both, and it is designed to prevent unauthorized access to a network while allowing legitimate traffic to pass through. Firewalls typically work by analyzing packets of data and either allowing or blocking them based on rules established by the network administrator.
  </details>
  
- What is a vulnerability assessment, and how is it different from a penetration test?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A vulnerability assessment is a process of identifying and assessing potential vulnerabilities in a system or network. It is typically done using automated tools or manual testing techniques to identify vulnerabilities that could be exploited by an attacker. A penetration test, on the other hand, is a simulated attack on a system or network designed to test its security controls and identify potential weaknesses. While both vulnerability assessments and penetration tests are used to identify security vulnerabilities, the main difference is that vulnerability assessments are more focused on identifying potential vulnerabilities, while penetration tests are designed to actually test the effectiveness of security controls in place.
  </details>
  
- What is encryption, and how is it used in cybersecurity?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Encryption is the process of converting plain text into a coded format to protect it from unauthorized access. It is used in cybersecurity to protect sensitive information like passwords, credit card numbers, and other confidential data. Encryption works by using mathematical algorithms to convert the original data into a ciphertext that can only be read by someone who has the key to decrypt it back into plain text.
  </details>
  
- What is a Denial of Service (DoS) attack, and how does it work?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A Denial of Service (DoS) attack is an attack on a computer system or network that disrupts its normal functioning by overwhelming it with traffic or requests. The attacker typically sends a large number of requests or packets to the target system or network, making it difficult or impossible for legitimate traffic to get through. This can cause the system or network to crash or become unavailable to users.
  </details>
  
- What is phishing, and how can you identify and prevent it?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Phishing is a type of cyber attack where an attacker tries to trick a user into revealing sensitive information like passwords, credit card numbers, or other personal data. This is typically done by sending an email that appears to be from a legitimate source, such as a bank or other trusted organization, and asking the user to click on a link or provide their login credentials. To identify and prevent phishing attacks, users should be cautious when opening emails or clicking on links from unknown sources. They should also look for signs of a phishing email, such as poor grammar, misspellings, or requests for personal information.
  </details>
  
- What is a DDoS attack and how does it work?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A DDoS (Distributed Denial of Service) attack is a type of cyber attack that involves flooding a target system or network with traffic from multiple sources, in order to overload it and make it unavailable to legitimate users. DDoS attacks can be carried out using a variety of techniques, including botnets, amplification attacks, and SYN floods.
  </details>
  
- What is the CIA triad and why is it important in cyber security?

  <details>
  <summary>Click here to view answer</summary>
  Answer: The CIA triad stands for Confidentiality, Integrity, and Availability. It is an essential concept in cybersecurity that refers to the three key objectives of securing sensitive information: maintaining its confidentiality, ensuring its integrity, and guaranteeing its availability to authorized users.
  </details>
  
- What is the difference between a virus and a worm?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A virus is a malicious software that replicates itself and spreads to other computers through infected files, while a worm is a self-replicating malicious software that spreads through computer networks and exploits security vulnerabilities in the system.
  </details>

- What is multi-factor authentication and why is it important?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Multi-factor authentication (MFA) is a security mechanism that requires users to provide two or more forms of authentication before they are granted access to a system or application. MFA helps to prevent unauthorized access by making it more difficult for attackers to gain access, even if they have stolen a user's password or other authentication credentials.
  </details>

- What is social engineering, and how can it be prevented?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Social engineering is a technique used by cybercriminals to manipulate people into divulging sensitive information or performing an action that can compromise their security. It can be prevented by educating employees about the risks of social engineering and implementing security policies and procedures that minimize the risk of social engineering attacks.
  </details>
  
- What is the difference between symmetric and asymmetric encryption?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Symmetric encryption uses the same key for both encryption and decryption, while asymmetric encryption uses different keys for encryption and decryption.
  </details>  

- What is an intrusion detection system (IDS), and how does it work?

  <details>
  <summary>Click here to view answer</summary>
  Answer: An intrusion detection system is a network security technology that monitors network traffic for signs of malicious activity or policy violations. It works by analyzing network traffic in real-time and comparing it against a set of predetermined rules or policies to detect potential security threats.
  </details>

- What is a security information and event management (SIEM) system, and how does it work?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A security information and event management system is a technology that provides real-time analysis of security alerts generated by network hardware and applications. It works by collecting and correlating security events from multiple sources to identify potential security threats.
  </details>

- What is a honeypot and how is it used in cybersecurity?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A honeypot is a decoy system designed to attract attackers and gather information about their methods and motivations. It can be used to detect new types of attacks, collect threat intelligence, and analyze attacker behavior.
  </details>
  
- What is a man-in-the-middle attack and how can it be prevented?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A man-in-the-middle (MITM) attack is a type of cyber attack where an attacker intercepts communication between two parties, often to steal sensitive information. To prevent MITM attacks, users should avoid using public Wi-Fi networks, use encrypted communications channels, and verify the identity of the party they are communicating with.
  </details>
  
- What is the difference between IDS and IPS?

  <details>
  <summary>Click here to view answer</summary>
  Answer: IDS is Intrusion Detection System and it only detects intrusions and the administrator has to take care of preventing the intrusion. Whereas, in IPS i.e., Intrusion Prevention System, the system detects the intrusion and also takes actions to prevent the intrusion.
  </details>
  
- How is Encryption different from Hashing?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Both Encryption and Hashing are used to convert readable data into an unreadable format. The difference is that the encrypted data can be converted back to original data by the process of decryption but the hashed data cannot be converted back to original data.
  </details>
  
- What is a three-way handshake?

  <details>
  <summary>Click here to view answer</summary>
  Answer: A three-way handshake is a method used in a TCP/IP network to create a connection between a host and a client. It’s called a three-way handshake because it is a three-step method in which the client and server exchanges packets. The three steps are as follows: The client sends a SYN(Synchronize) packet to the server check if the server is up or has open ports. The server sends SYN-ACK packet to the client if it has open ports. The client acknowledges this and sends an ACK(Acknowledgment) packet back to the server
  </details>
  
- What are the response codes that can be received from a Web Application?

  <details>
  <summary>Click here to view answer</summary>
  Answer:
  1xx – Informational responses
  2xx – Success
  3xx – Redirection
  4xx – Client-side error
  5xx – Server-side error
  </details>
  
- Explain SSL Encryption?

  <details>
  <summary>Click here to view answer</summary>
  Answer: SSL(Secure Sockets Layer) is the industry-standard security technology creating encrypted connections between Web Server and a Browser. This is used to maintain data privacy and to protect the information in online transactions. The steps for establishing an SSL connection is as follows:
  A browser tries to connect to the webserver secured with SSL. The browser sends a copy of its SSL certificate to the browse. The browser checks if the SSL certificate is trustworthy or not. If it is trustworthy, then the browser sends a message to the web server requesting to establish an encrypted connection. The web server sends an acknowledgment to start an SSL encrypted connection. SSL encrypted communication takes place between the browser and the web server
  </details>
  
- Explain Data Leakage?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Data Leakage is an intentional or unintentional transmission of data from within the organization to an external unauthorized destination. It is the disclosure of confidential information to an unauthorized entity. Data Leakage can be divided into 3 categories based on how it happens:
  Accidental Breach: An entity unintentionally send data to an unauthorized person due to a fault or a blunder. Intentional Breach: The authorized entity sends data to an unauthorized entity on purpos. System Hack: Hacking techniques are used to cause data leakage. Data Leakage can be prevented by using tools, software, and strategies known as DLP(Data Leakage Prevention) Tools.
  </details>
  
- What are some of the common Cyberattacks?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Port Scanning is the technique used to identify open ports and service available on a host. Hackers use port scanning to find information that can be helpful to exploit vulnerabilities. Administrators use Port Scanning to verify the security policies of the network. Some of the common Port Scanning Techniques are:
  Ping Scan
  TCP Half-Open
  TCP Connect
  UDP
  Stealth Scanning
  </details>
  
- What are salted hashes?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Salt is a random data. When a properly protected password system receives a new password, it creates a hash value of that password, a random salt value, and then the combined value is stored in its database. This helps to defend against dictionary attacks and known hash attacks.
  Example: If someone uses the same password on two different systems and they are being used using the same hashing algorithm, the hash value would be same, however, if even one of the system uses salt with the hashes, the value will be different.
  </details>  
  
- What is Port Scanning?

  <details>
  <summary>Click here to view answer</summary>
  Answer: Following are some common cyber attacks that could adversely affect your system.
  Malware
  Phishing
  Password Attacks
  DDoS
  Man in the Middle
  Drive-By Downloads
  Malvertising
  Rogue Software
  </details>  

# Encryption and Authentication
   
   * What is a three-way handshake?
   * How do cookies work?
   * How do sessions work?
   * Explain how OAuth works.
   * What is a public key infrastructure flow and how would I diagram it?
   * Describe the difference between synchronous and asynchronous encryption.
   * Describe SSL handshake.
   * How does HMAC work?
   * Why HMAC is designed in that way?
   * What is the difference between authentication vs authorization name spaces?
   * What’s the difference between Diffie-Hellman and RSA?
   * How does Kerberos work?
   * If you're going to compress and encrypt a file, which do you do first and why?
   * How do I authenticate you and know you sent the message?
   * Should you encrypt all data at rest?
   * What is Perfect Forward Secrecy?
  
  # OWASP Top 10, Pentesting and/or Web Applications

   * Differentiate XSS from CSRF.
   * What do you do if a user brings you a pc that is acting 'weird'? You suspect malware.
   * What is the difference between tcp dump and FWmonitor?
   * Do you know what XXE is?
   * Explain man-in-the-middle attacks.
   * What is a Server Side Request Forgery attack?
   * Describe what are egghunters and their use in exploit development. 
   * How is pad lock icon in browser generated?
   * What is Same Origin Policy and CORS?
  
# Compliance
    
   * Can you explain SOC 2?
      * What are the five trust criteria?
   * How is ISO27001 different?
   * Can you list examples of controls these frameworks require?
   * What is the difference between Governance, Risk and Compliance?  
   * What does Zero Trust mean?
   * What is role-based access control (RBAC) and why is it covered by compliance frameworks?
   * What is the NIST framework and why is it influential?
   * What is the OSI model?

## Interpersonal & behavioural questions


## References:

- intellipaat.com
- Add more links to any references.

## Charity 
- Since this is a community-based project and it is run by the community - we (the creators) do not gain any personal nor financial gain other than helping the community. Instead, any financial gain would be better suited to a charity. So we wanted to take it upon us to help those in need. We, as a community, have chosen a certified charity to donate to. Here is the link to donate to:
    - To ADD charity donation links here.

## License

This project is licensed under the Apache License. See the [LICENSE](LICENSE) file for more details.
