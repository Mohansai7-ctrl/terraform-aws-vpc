locals {
    resource_name = "${var.project}-${var.environment}"
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)  #0 is startindex --> inclusive and 2 is endindex --> exclusive == means it will check for 0th and 1st index values
}