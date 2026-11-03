# Terraform Associate (TA-004) Course

Working through Bryan Krausen's "HashiCorp Certified Terraform Associate 004 Exam Prep Course" on Udemy, one section at a time.
This is the first step of my certification plan (Terraform, CCNA, Kubernetes), and the knowledge goes straight into the IaC migration of my [ED50 v2.0](https://github.com/LuisBretonesVillegas/ed50-infra) infrastructure.

## Progress

**0 / 17 sections completed**

| Section | Topic                                                        | Status |
|---------|--------------------------------------------------------------|--------|
| 1       | Introduction                                                 | 🔄      |
| 2       | Preparing Your Environment                                   | ⬜      |
| 3       | Terraform Foundations                                        | ⬜      |
| 4       | The Core Terraform Workflow                                  | ⬜      |
| 5       | Terraform CLI                                                | ⬜      |
| 6       | Terraform File Structure and Organization                    | ⬜      |
| 7       | Terraform Configuration - Fundamentals                       | ⬜      |
| 8       | Hands-On Labs - Writing Your First Terraform Configurations  | ⬜      |
| 9       | Understanding and Managing Terraform State                   | ⬜      |
| 10      | Making Code Reusable                                         | ⬜      |
| 11      | Refactoring Terraform State                                  | ⬜      |
| 12      | Terraform Modules                                            | ⬜      |
| 13      | Managing Resource Behavior and Dependencies                  | ⬜      |
| 14      | Securing Terraform Configurations                            | ⬜      |
| 15      | Terraform Troubleshooting                                    | ⬜      |
| 16      | HCP Terraform                                                | ⬜      |
| 17      | Exam Prep Essentials: What to Know for Each Objective        | ⬜      |

> ✅ Done / 🔄 In progress / ⬜ Not started

The course also has a practice exam section and a one-minute section, which are not tracked here.

## Setup

Starter Terraform template for AWS. It declares no resources, so it creates no infrastructure and generates no costs.

- Terraform `>= 1.12.0`
- The official HashiCorp Terraform extension for VS Code
- AWS credentials configured outside Terraform

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and adjust `aws_region`.
2. Configure your credentials through the AWS CLI (`aws configure` or a profile) or AWS-compatible environment variables. Never store credentials in `.tf` files.
3. Initialize and validate the project:

   ```powershell
   terraform init
   terraform fmt -check
   terraform validate
   ```

`terraform.tfvars` and the local state are excluded from Git. The `.terraform.lock.hcl` file is kept in version control to pin provider versions.

## Updating progress

Edit `progress.json` and push. The portfolio page reads it directly from `main`.

```json
{
  "total": 17,
  "completed": 3,
  "started": "2026-11-03",
  "log": [
    { "date": "2026-11-10", "section": 3, "title": "Terraform Foundations", "notes": "Optional notes." }
  ]
}
```

`completed` is the number of the last finished section. New log entries go at the top of `log`.

---

Documented on my portfolio: [luisbretones.dev/learning/terraform-udemy-course](https://luisbretones.dev/learning/terraform-udemy-course/)
