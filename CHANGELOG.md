# Change Log

## 0.5.1

## 0.5.0

* Update resource specification document (no version given)

## 0.4.4

* Update the resource specification document to version `1.4.2`

## 0.4.3

* Update the resource specification document to version `1.4.1`

## 0.4.2

* Update the resource specification document to version `1.2.1`

## 0.4.1

* Manually write out all JSON instances to speed up compilation
* Fix bug in CloudFormation specification where `EvaluationPeriods` was
  accidentally set to `Double`.

## 0.4.0

* Derive the `Eq` type class for everything. This is useful when comparing two
  templates.
* Added the new `Fn::Split` function.
* Fix error in resource specification document where
  `AWS::AutoScaling::AutoScalingGroup.Tags` was mistakenly called `AsTags`.
* Fix error in resource specification document where the two properties `Image`
  and `Name` in `AWS::ECS::TaskDefinition.ContainerDefinition` were incorrectly
  marked as *not* required, even though they are required.
* Fix JSON instances for auto scaling group update policies

## 0.3.1

* Updated resource specification document to version 1.1.1.

## 0.3.0

* **Backwards-incompatible**: We now use the official AWS JSON spec document to
  auto-generate types. This means there is no more Python scraper and custom
  JSON schemas. The behavior of the library is exactly the same, but a ton of
  resource names changed to match official the official AWS names. On the plus
  side, we now have 100% service coverage!

## 0.2.2

* Fixed a test suite failure caused by bleeding edge HLint version.

## 0.2.1

* Added Dynamo DB table resources (@ababkin)
* Fix the Python docs scraper mishandling the `required` value in some cases,
  and also missing some properties of resources (@amar47shah)
* Added a ton of SNS and SQS resources (@ababkin)
* Added a experimental checker for duplicate resource names (@amar47shah)

## 0.2.0

* Breaking change: The `DependsOn` property previously allowed lists of `Val
  Text`, when in fact CloudFormation only accepts literal `Text` values. The
  new type of `DependsOn` is `Maybe [Text]`.
* Added `AWS::ElastiCache::CacheCluster` resource (@MichaelXavier)
* Added many `AWS::Lambda` resources and associated resource properties (@ababkin)
* Added new `ImportValue` CloudFormation function (@timmytofu)
* Added tons of AWS Kineses resources (@MichaelXavier)
* Added a lot of Api Gateway resources (@ababkin)
* Allow setting `LensPrefix` in JSON model files to avoid name collisions
  (https://github.com/frontrowed/stratosphere/issues/27)

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
