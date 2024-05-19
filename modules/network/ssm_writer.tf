# Write the VPC ARN to SSM to be used in other modules
resource "aws_ssm_parameter" "sotw_vpc_id" {
    name = "/network/sotw-vpc/id"
    type = "String"
    value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "db_sg_id" {
    name = "/network/db-sg/id"
    type = "String"
    value = aws_security_group.db.id
}

resource "aws_ssm_parameter" "db_subnet_1c_id" {
    name = "/network/db-subnet-1c/id"
    type = "String"
    value = aws_subnet.db_1c.id
}

resource "aws_ssm_parameter" "db_subnet_1a_id" {
    name = "/network/db-subnet-1a/id"
    type = "String"
    value = aws_subnet.db_1a.id
}

resource "aws_ssm_parameter" "ecs_security_group_id" {
    name = "/network/ecs-sg/id"
    type = "String"
    value = aws_security_group.ecs.id
}

resource "aws_ssm_parameter" "ecs_subnet_1a_id" {
    name = "/network/ecs-subnet-1a/id"
    type = "String"
    value = aws_subnet.ecs_1a.id
}

resource "aws_ssm_parameter" "ecs_subnet_1b_id" {
    name = "/network/ecs-subnet-1b/id"
    type = "String"
    value = aws_subnet.ecs_1b.id
}