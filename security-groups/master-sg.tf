resource "aws_security_group" "master-sg" {
  name =  "${var.cluster_name}-master-sg"
  vpc_id =  data.aws_vpc.cluster_vpc.id

  tags =  merge(
  var.default_tags,
    {
    "Name" =  "${var.cluster_name}-master-sg",
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}

resource "aws_security_group_rule" "master_ingress_all" {
  type              = "ingress"
  security_group_id = aws_security_group.master-sg.id
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0", var.cidr_blocks]
  from_port   = 0
  to_port     = 0
}

resource "aws_security_group_rule" "master_egress_all" {
  type              = "egress"
  security_group_id = aws_security_group.master-sg.id
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 0
  to_port     = 0
}
