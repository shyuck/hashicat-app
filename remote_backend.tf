terraform {
  cloud {
    organization = "gsneotekce"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
