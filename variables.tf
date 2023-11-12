variable "region" {
  default = "eu-west-1"
}

variable "vpc_cidr" {
  type = string
  description = "The allowed block size is between a /28 netmask and /16 netmask"
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = map(string)
  description = "Don't change this without first changing vpc_cidr"
  default = {
    be1 = "10.0.0.0/24"
    be2 = "10.0.1.0/24"
    fe1 = "10.0.2.0/24"
    fe2 = "10.0.3.0/24"
  }
}

variable "vpc_name" {
  type    = string
  description = "Set VPC name without special characters"
  default = "name"
}

# Ejemplo de variables.tf para Terraform con HCLv1 y HCLv2

# Variable simple de cadena
variable "simple_string" {
  description = "Una simple variable de cadena"
  type        = string
  default     = "valorPorDefecto"
}

# Variable numérica con validación
variable "number_example" {
  description = "Un ejemplo de variable numérica con validación"
  type        = number
  default     = 10
  validation {
    condition     = var.number_example > 0
    error_message = "El número debe ser mayor que 0."
  }
}

# Variable de lista
variable "list_example" {
  description = "Ejemplo de variable de lista"
  type        = list(string)
  default     = ["valor1", "valor2", "valor3"]
}

# Variable de mapa
variable "map_example" {
  description = "Ejemplo de variable de mapa"
  type        = map(string)
  default     = {
    clave1 = "valor1"
    clave2 = "valor2"
  }
}

# Variable booleana
variable "boolean_example" {
  description = "Ejemplo de variable booleana"
  type        = bool
  default     = false
}

# Variable compleja con validación
variable "complex_variable" {
  description = "Variable compleja con validación"
  type = object({
    name    = string
    age     = number
    address = object({
      street = string
      city   = string
    })
  })
  default = {
    name    = "NombrePorDefecto"
    age     = 30
    address = {
      street = "Calle Falsa 123"
      city   = "Ciudad Ejemplo"
    }
  }
  validation {
    condition     = var.complex_variable.age > 18
    error_message = "La edad debe ser mayor a 18."
  }
}


