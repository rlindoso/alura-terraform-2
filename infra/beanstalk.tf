resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = var.repositoryName
  description = var.description
}

resource "aws_elastic_beanstalk_environment" "beanstalk_environment" {
  name                = var.environment
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = "64bit Amazon Linux 2023 v4.1.2 running Docker"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.machine
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.max
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }
}

resource "aws_elastic_beanstalk_application_version" "default" {
  depends_on = [
    aws_elastic_beanstalk_environment.beanstalk_environment,
    aws_elastic_beanstalk_application.beanstalk_application,
    aws_s3_object.docker
  ]
  name        = var.environment
  application = var.repositoryName
  description = var.description
  bucket      = aws_s3_bucket.beanstalk_deploy_s3.bucket
  key         = aws_s3_object.docker.id
}