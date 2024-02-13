
# Terraform Template

<!-- --- DEPLOYMENT STATUS CODE -----

Deployment Status: [![Deploy to Heroku](https://github.com/hassanaftab93/REPO-NAME/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/hassanaftab93/REPO-NAME/actions/workflows/main.yml)

-->
<!-- --- FORMAT OF MARK DOWN WITH COLLAPSIBLE MENU ---
<details>
  <summary>
    <h2>
      
    </h2>
  </summary>

</details>
-->
<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      🛠 Strategy
    </h2>
  </summary>
  
  * SSH-Key -> first-key
  * * ssh-keygen -t rsa
  * Assign first-key -> new instance
  * create security group on aws
  * assign group to instance
  
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      📑 Steps
    </h2>
  </summary>

  Important Commands
  ```bash
    terraform init
    terraform plan -var-file=var.tfvars
    terraform apply -var-file=var.tfvars
    terraform destroy
    terraform destroy -target=resourcename
  ```

  Terraform init: if changing backend block, run this first!
  ```bash
    terraform init -migrate-state
  ```

  Terraform prevent locking - Lock Mechanism using DynamoDB for AWS (noSQL)
  
  ```bash
    DynamoDB -> Add Table -> TableName (name) -> Partition Key (LockID) -> Create
  ```
  
  Extra Commands
  ```bash
    terraform graph | dot -Tpdf > graph.pdf
    terraform graph | dot -Tpdf > ../'terraform graph'/graph.pdf
  ```

  Terraform Workspaces: To segregate tfstate files
  ```bash
    terraform workspace help
    terraform workspace new dev
    terraform workspace new test
    terraform workspace new prod
    terraform workspace select dev
    terraform workspace show
    terraform workspace list
    terraform workspace delete test
  ```

  As Terraform is a well known tool for IaaC, it does have some caveats.
  - No support for generating project structures
  - No support for generating modules

  To address these issues, a Makefile has been designed to generate a project and it uses basic bash commands to generate files in a proper folder structure following best practices

  # Getting Started

  Make sure you have the following installed
  1. gnumake / make tool for using make commands
  2. terraform
  3. (optional) terragrunt

  To get started,

  1. Copy the 'Terraform' folder that contains makefile and 'terraform-templates' folder into a directory that the terraform project will be based in.

  2. Now run
    ```bash
          make -C Terraform init provider=PROVIDER_NAME_HERE
    ```
    Provider name options are:
      1. azurerm
      2. google
      3. aws
      4. oci

  3. This will generate a terraform folder with the following folder structure:
      ```bash
      ./terraform
      ├── Makefile
      ├── modules
      ├── terraform-graph
      ├── terraform.main.tf
      ├── terraform.outputs.tf
      ├── terraform.providers.tf
      ├── terraform.variables.tf
      └── variables
          ├── local.tfvars
          └── pipeline.tfvars
      ```
      and then open the terraform folder in a different vs code window

  4. Now you can run the following to generate modules:

      ```bash
          make module module=MODULE_NAME_HERE
      ```

      suppose you run the following command:

      ```bash
          make module module=container_app
      ```

      this will generate the following structure inside modules folder:
      ```bash
      ./modules/container_app
      ├── main.tf
      ├── outputs.tf
      └── variables.tf
      ```

  # Make Commands for Terraform

  ```bash

  make fmt -> This is format the code

  make validate -> This will validate the code for errors

  make plan -> This will run terraform plan command, and generate a "tfplan" file

  make apply -> This will apply the infrastructure to the cloud

  make destroy -> This will destroy the applied infrastructure

  make refresh -> This refresh tfstate between local and remote

  make graph -> This generates a graph of the infrastructure that is to be deployed

  ```

</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      📚 Contributing
    </h2>
  </summary>

  Click here to learn more about: [Contributions](./docs/CONTRIBUTING.md)
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      ✒️ Author
    </h2>
  </summary>

  <!--
  Add More Contributors/Authors here using the following line of code:
  - [@username](https://www.github.com/username)
  -->

  - [@hassanaftab93](https://www.github.com/hassanaftab93)

</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      🔗 Links
    </h2>
  </summary>

<!--

  Add your links here in the table below:
  Remove my Table and use your own links.

  |Type|Link|
  |:--:|:--:|
  |Portfolio| PORTFOLIO_LINK_HERE |
  |LinkedIn| LINKEDIN_LINK_HERE |

-->

  |Type|Link|
  |:--:|:--:|
  | Portfolio | [![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://linktr.ee/hassanaftab) |
  | LinkedIn | [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/hassanaftab93/) |
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->

