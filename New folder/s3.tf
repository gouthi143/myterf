resource "aws_s3_bucket_policy" "BucketPolicy" {
  bucket = ""
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Principal": "*",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::/*"
      ],
      "Effect": "Allow",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": "34.90.90.90"
        }
      }
    }
  ]
}
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Principal": "*",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::/*"
            ],
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {
                    "aws:SourceIp": "34.90.90.90"
                }
            }
        }
    ]
}
}
}