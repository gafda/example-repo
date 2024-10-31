# Local Kubernetes Deployment Guide

# Introduction

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It provides a robust infrastructure for deploying, scaling, and managing containerized applications in a clustered environment.

## Example of Kubernetes engines

* Minikube
* MicroK8s
* Kind
* K3s

---

## MicroK8s Deployment Guide

### Introduction

MicroK8s is a lightweight, fast, and secure Kubernetes distribution designed for developers and IoT enthusiasts. It offers a zero-configuration, single-package installation that works on Linux, macOS, and Windows. With MicroK8s, you can run a full Kubernetes system on your local machine for development and testing purposes.

### Installation

#### Prerequisites

- **Operating System**: Linux, macOS, or Windows
- **Permissions**: Administrative privileges

#### Installation Steps

##### On Linux

Install MicroK8s using Snap:

```bash
sudo snap install microk8s --classic
```

Add your user to the `microk8s` group to avoid using `sudo` with MicroK8s commands:

```bash
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
```

Log out and back in for the group changes to take effect.

##### On macOS and Windows

Install MicroK8s using the installer:

- **macOS**: Download the installer from the [official website](https://microk8s.io/docs/install-alternatives#heading--macos).
- **Windows**: Download the installer from the [official website](https://microk8s.io/docs/install-alternatives#heading--windows).

Follow the installation prompts to complete the setup.

### Applying YAML Files

With MicroK8s installed, you can apply Kubernetes YAML files using the embedded `kubectl` command:

```bash
microk8s kubectl apply -f path/to/your-file.yaml
```

Replace `path/to/your-file.yaml` with the path to your Kubernetes configuration files.

### Additional Resources

- [MicroK8s Documentation](https://microk8s.io/docs)
- [Getting Started with MicroK8s](https://microk8s.io/docs/getting-started)
