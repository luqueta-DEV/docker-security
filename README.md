# Secure Infrastructure with Docker, Terraform, Ansible, Pulumi, and C++

Este projeto configura uma infraestrutura segura utilizando Docker, Terraform, Ansible, Pulumi, e C++. A aplicação C++ é empacotada em um container Docker, e toda a infraestrutura é orquestrada com Terraform e Pulumi, enquanto o Ansible gerencia a configuração do servidor. A segurança é garantida por regras Zero Trust e pelo uso do **Sentinel** para aplicar políticas de segurança durante o provisionamento da infraestrutura.

## Estrutura do Projeto

- **terraform/**: Provisionamento da infraestrutura com Terraform, incluindo Sentinel para políticas de segurança.
- **ansible/**: Configuração e gerenciamento de servidores.
- **pulumi/**: Orquestração avançada da infraestrutura com Pulumi.
- **security/**: Scripts para verificar a segurança da infraestrutura.
- **cpp-app/**: Código da aplicação C++.
- **.github/workflows/**: CI/CD com GitHub Actions.

## Como Rodar

1. **Clone este repositório**:
    ```bash
    git clone https://github.com/seu-usuario/secure-infra-cpp.git
    cd secure-infra-cpp
    ```

2. **Configurar Terraform**:
    ```bash
    cd terraform
    terraform init
    terraform apply -auto-approve
    ```

3. **Configurar Ansible**:
    ```bash
    cd ansible
    ansible-playbook -i inventory playbook.yml
    ```

4. **Rodar Pulumi**:
    ```bash
    cd pulumi
    pulumi up -y
    ```

5. **Verificar Segurança**:
    ```bash
    cd security
    ./run_security_checks.sh
    ```

6. **CI/CD**:
    A integração com GitHub Actions permite automação completa do deploy.
