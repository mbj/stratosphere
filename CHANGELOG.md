# Change Log

## Unreleased

* Breaking change: The `DependsOn` property previously allowed lists of `Val
  Text`, when in fact CloudFormation only accepts literal `Text` values. The
  new type of `DependsOn` is `Maybe [Text]`.
* Added `AWS::ElastiCache::CacheCluster` resource (@MichaelXavier)
* Added many `AWS::Lambda` resources and associated resource properties (@ababkin)
* Added new `ImportValue` CloudFormation function (@timmytofu)

## 0.1.6

* Fix Haddock parsing for `FindInMap`. We now run haddock in CircleCI so we
  shouldn't see a regression like this in the future.

## 0.1.5

* Added S3 buckets and bucket policies
* Added CloudTrail Trail (Thanks @timmytofu!)
* Added the `FindInMap` intrinsic function. (Thanks @MichaelXavier!)
* Added `SecurityGroupEgress` and `SecurityGroupIngress` rules. (Thanks
  @MichaelXavier!)
* Fixed type of ELB policy using the more specific `NameAndValue` type. (Thanks
  @MichaelXavier!)

## 0.1.4

* Added `UserName` property to the IAM User resource. (Thanks @timmytofu!)
* Added IAM Group and Role name parameters. (Thanks again @timmytofu!)

## 0.1.3

* Update `aeson-pretty` to version 0.8 so we can stay in stackage nightly.
* Fix not exporting resource name lens.

## 0.1.2.1

* Removed some dependencies that crept in so we can build against stackage
  nightly and use GHC 8. These were actually dependencies of
  `stratosphere-gen` and aren't needed for `stratosphere`.

## 0.1.2

* Added all of the resources and resource properties for Auto Scaling Groups.
* New AutoScalingGroup example
* Added UpdatePolicy, CreationPolicy, and DependsOn

## 0.1.1

* Small bug fix for "style" test when using the cabal distribution

## 0.1 (initial release)

* Initial release with all Template components implemented along with a huge
  set of Resources.
