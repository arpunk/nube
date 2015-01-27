# nube
*LFE wrapper for the erlcloud library*

## Introduction

Nube serves as a wrapper for the different AWS services the erlcloud
Erlang library supports with some extra macros to make your life
easier.

As we depend on some fixes that are only available in LFE development
branch, we need to use latest lfetool in order to compile nube. The
`dev-1` branch of lfetool uses lcfg which we also use to overwrite the
LFE version.

## Installation

Just add it to your ``rebar.config`` deps:

```erlang
  {deps, [
    ...
    {nube, ".*",
      {git, "git@github.com:arpunk/nube.git", "master"}}
      ]}.
```

And then get and compile the dependencies:

```bash
    $ lfetool download deps
    $ rebar compile
```

## Documentation

## Supported AWS services
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

## Usage

Make sure you have exported your AWS credentials:

```bash
    export AWS_ACCESS_KEY_ID="access key"
    export AWS_SECRET_ACCESS_KEY="secret access key"
```

Then fire up a `repl`:

```bash
    $ make repl-no-deps
    ...
    > (nube:start)
    ok
    > (nube-ec2:describe-images)
```

Or you can just create the credentials:

```lisp
    (let ((credentials (nube-util:make-crendentials "access key" "secret access key")))
      (nube-ec2:describe-images credentials))
```

## License

MIT
