# Terraform Lab – Infrastructure as Code

## 📌 Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform. It covers basic Terraform concepts, Docker container management, modular infrastructure, CI/CD automation, and dynamic infrastructure creation.

---

## 🛠️ Tools Used
- Terraform
- Docker
- Git & GitHub
- GitHub Actions

---

## 📁 Project Structure

---

## ✅ Day 1 – Basic Terraform
- Created a file using Terraform local provider
- Commands used:
  - terraform init
  - terraform plan
  - terraform apply
- Output: `hello.txt`

---

## ✅ Day 2 – Variables
- Used input variables
- Created:
  - dev.tfvars
  - prod.tfvars
- Generated different outputs for different environments

---

## ✅ Day 3 – Docker with Terraform
- Used Docker provider
- Pulled nginx image
- Created container
- Exposed service on:
  - http://localhost:8080

---

## ✅ Day 4 – Modules
- Created reusable Terraform module
- Deployed multiple containers using module
- Containers running on:
  - http://localhost:8081
  - http://localhost:8082

---

## ✅ Day 5 – CI Workflow
- Implemented GitHub Actions workflow
- Automated:
  - terraform fmt
  - terraform validate
  - terraform plan

---

## 🚀 Bonus – Dynamic Infrastructure
- Used `for_each` to create containers dynamically
- Configuration:

### Output:
- http://localhost:8081
- http://localhost:8082
- http://localhost:8083

---

## 📦 How to Run

### Initialize Terraform

### Plan

### Apply

---

## 📸 Submission Requirements
- Terraform plan output screenshot
- Docker containers running (`docker ps`)
- Browser showing nginx pages
- GitHub repository link

---

## ⚠️ Notes
- Docker must be running
- Terraform must be installed
- CI workflow requires proper GitHub token permissions

---

## 👨‍💻 Author
BHARGAV RAM
