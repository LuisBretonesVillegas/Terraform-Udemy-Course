# Terraform en AWS

Plantilla inicial de Terraform para AWS. No declara recursos, por lo que no crea infraestructura ni genera costes.

## Requisitos

- Terraform `>= 1.12.0`
- La extensión oficial HashiCorp Terraform para VS Code
- Credenciales de AWS configuradas fuera de Terraform

## Configuración

1. Copia `terraform.tfvars.example` como `terraform.tfvars` y ajusta `aws_region`.
2. Configura tus credenciales mediante AWS CLI (`aws configure` o un perfil) o variables de entorno compatibles con AWS. No guardes credenciales en archivos `.tf`.
3. Inicializa y valida el proyecto:

   ```powershell
   terraform init
   terraform fmt -check
   terraform validate
   ```

`terraform.tfvars` y el estado local están excluidos de Git. Conserva `terraform.lock.hcl` en el control de versiones para fijar las versiones de los proveedores.
