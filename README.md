# nube
*LFE wrapper for the erlcloud library*

## Introduction

Nube serves as a wrapper for the different AWS services the erlcloud
Erlang library supports with some extra macros to make your life
easier.

## Installation

To install and use the library just add it to your ``rebar.config``
deps:

```erlang
  {deps, [
    {nube, {git, "git@github.com:arpunk/nube.git", {branch, "master"}}}
  ]}.
```

Then get and compile the dependencies:

```bash
    $ rebar3 compile
```

## Documentation

### Supported AWS services
* EC2
* ELB
* S3
* SDB
* SQS
* STS
* SNS
* Kinesis
* IAM
* AutoScaling
* CloudTrail
* Mechanical Turk
* CloudWatch
* DynamoDB

### Usage

#### Quickstart

Make sure you have exported your AWS credentials:

```bash
    export AWS_ACCESS_KEY_ID="access key"
    export AWS_SECRET_ACCESS_KEY="secret access key"
```

Then fire up a `repl`:

```bash
    $ rebar3 lfe repl
    ...
    > (nube:start)
    ok
    > (nube-ec2:describe-images)
```

Or you can just create the credentials:

```lisp
    (let ((credentials (nube-util:make-crendentials "access key"
                                                    "secret access key")))
      (nube-ec2:describe-images credentials))
```

### More advanced

```lisp
(let* ((instance-spec (make-ec2_instance_spec image_id "ami"
                                              key_name "keypair"
                                              instance_type "t2.micro"
                                              availability_zone "us-east-1c"))
       (instance (nube-ec2:run-instances instance-spec))
    (lfe_io:format "Instance: ~p~n" (list instance))))
```

## License

MIT
