data "aws_availability_zones" "available" {
    state = available
}

#These below 2 details are related to default vpc with which peer connection will be done.
data "aws_vpc" "default" {
    default = true

}

data "aws_route_table" "main" {
    vpc_id = data.aws_vpc.default.id
    filter {
        name = "association.main"
        values = ["true"]
    }

}