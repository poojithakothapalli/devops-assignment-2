
🎯 Objective
To design and implement a complete automated DevOps workflow for a web-based Ticket Booking Portal, covering:

- Version Control (Git & GitHub)  
- Containerization (Docker)  
- Continuous Integration (CI)  
- Continuous Delivery (CD)  
- Deployment & Orchestration (Kubernetes)

using Git, Docker, Jenkins, Docker Hub, and Kubernetes.

---

🖥️ Application Overview
The Ticket Booking Portal is a front-end web application that allows users to book tickets for events or movies.

 🧾 Features
- Interactive HTML form for booking tickets  
- Displays booking summary dynamically using JavaScript  
- Clean and responsive layout built with CSS3  
- Static front-end app (no backend required)  
🛠️ Tools and Technologies

| Tool / Technology | Purpose |
|--------------------|----------|
| Git & GitHub | Version control and code hosting |
| Docker| Containerization of the web application |
| Jenkins | Continuous Integration and Delivery automation |
| Docker Hub | Repository to store and pull Docker images |
| Kubernetes | Deployment, scaling, and orchestration of containers |

---

⚙️ DevOps Workflow

The project follows a **four-stage automated pipeline**:

1. Version Control– Manage code with Git and GitHub  
2. Containerization– Package the web app using Docker  
3. Continuous Integration & Delivery (CI/CD) – Automate build and deployment with Jenkins  
4. Deployment & Orchestration – Deploy and scale using Kubernetes  

---

🔹 Step 1: Version Control (Git & GitHub)

- Initialized a local Git repository for the web application  
- Implemented GitFlow branching strategy:
  - `main` → Production code  
  - `develop` → Integration branch  
  - `feature/*` → Individual features  
- Pushed all commits to GitHub repository  
- Set up GitHub Webhook to trigger Jenkins automatically on new commits

Result: Code changes automatically start the Jenkins pipeline.

---

🔹 Step 2: Containerization (Docker)

🐳 Dockerfile Example
```dockerfile
# Use Nginx as base image
FROM nginx:latest

# Copy project files into Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
