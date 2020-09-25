# Change Log

## 0.60.0

- Update resource specification document to version 18.4.0

## 0.59.1

- Fix missing `.cabal` file in distribution

## 0.59.0

- Update resource specification document to version 18.2.0

## 0.58.0

- Update resource specification document to version 17.0.0
- Added `.cabal` files to repo (#179)
- Added `PATCH` constructor for `HttpMethod` (#176)

## 0.57.0

- Update resource specification document to version 16.3.0

## 0.56.0

- Update resource specification document to version 16.2.0

## 0.55.0

- Update resource specification document to version 15.3.0

## 0.54.0

- Update resource specification document to version 15.1.0

## 0.53.0

- Update resource specification document to version 14.3.0
- Update CI for GHC 8.8

## 0.52.0

- Update resource specification document to version 12.3.0

## 0.51.0

- Update resource specification document to version 11.6.0

## 0.50.0

- Update resource specification document to version 11.4.0

## 0.49.0

- Fixed `ImportValue` not allowing `Val` as argument (thanks @mbj!)
- Update resource specification document to version 10.4.0

## 0.48.0

- Update resource specification document to version 10.3.0

## 0.47.0

- Update resource specification document to version 10.2.0

## 0.46.0

- Update resource specification document to version 8.1.0

## 0.45.0

- Update lambda runtimes list

## 0.44.0

- Update resource specification document to version 7.1.0
- Added NodeJS10x Lambda runtime (@Gosha)

## 0.43.0

- Update resource specification document to version 6.3.0

## 0.42.0

- Update resource specification document to version 6.0.0

## 0.41.0

- Update resource specification document to version 5.0.0

## 0.40.0

- Update resource specification document to version 4.1.0

## 0.39.0

- Update resource specification document to version 3.4.0

## 0.38.0

- Update resource specification document to version 3.3.0

## 0.37.0

- Update resource specification document to version 3.0.0

## 0.36.0

- Update resource specification document to version 2.29.0

## 0.35.0

- Use a GADT for `Val a` so it is properly typed. This shouldn't break any
  programs that produced valid CloudFormation templates, but it should increase
  safety for templates that use intrinsic functions. This also allows us to
  properly implement some more intrinsic functions, like `Not`. See
  https://github.com/freckle/stratosphere/pull/120
- Added the `Fn::Not` intrinsic function. Fixes
  https://github.com/freckle/stratosphere/issues/80

## 0.34.0

- Don't encode `Bool`, `Int`, and `Double` values as strings in JSON. See:
  - https://github.com/frontrowed/stratosphere/pull/123 and
  - https://github.com/frontrowed/stratosphere/issues/86
- Use `-O0` when compiling `stratosphere`
- Update resource specification document to version 2.28.0

## 0.33.0

- **BREAKING CHANGE**: We nuked the huge `ResourceProperties` sum type, which
  greatly reduced compile times, memory usage, and binary sizes for programs
  that depend on `stratosphere`. See:

  - https://github.com/frontrowed/stratosphere/issues/95
  - https://github.com/frontrowed/stratosphere/pull/121

  To migrate to this version, you should just have to remove any uses of the old
  `ResourceProperties` sum type and pass your resource configuration directly
  into `Resource`:

  ```diff
  @@ -32,7 +32,6 @@ dbTemplate =
   rdsMaster :: Resource
   rdsMaster =
     resource "RDSMaster" $
  -  RDSDBInstanceProperties $
     rdsdbInstance
     "db.t2.micro"
  ```

## 0.32.0

- **BREAKING CHANGE**: We removed all `FromJSON` instances to reduce compile
  time and memory, and also to allow us to make other improvements that
  `FromJSON` was blocking. See
  https://github.com/frontrowed/stratosphere/issues/117

## 0.31.0

- Update resource specification document to version 2.25.0
- Added `Condition` field to resources

## 0.30.1

- Update resource specification document to version 2.21.0

## 0.30.0

- Update resource specification document to version 2.19.0

## 0.29.1

- Update resource specification document to version 2.18.1

## 0.29.0

- Update resource specification document to version 2.18.0

## 0.28.1

- Update resource specification document to version 2.16.0

## 0.28.0

- Update resource specification document to version 2.15.0

## 0.27.0

- Update resource specification document to version 2.12.0

## 0.26.2

- Update resource specification document to version 2.10.0

## 0.26.1

- Remove dependency on `aeson-qq`

## 0.26.0

- Update resource specification document to version 2.8.0

## 0.25.0

- Update resource specification document to version 2.6.0

## 0.24.4

- Update resource specification document to new unspecified version

## 0.24.3

- Update resource specification document to new unspecified version

## 0.24.2

- Update resource specification document to version 2.5.0

## 0.24.1

- Update resource specification document to support EKS

## 0.24.0

- Update resource specification document to version 2.4.0

## 0.23.0

- Update resource specification document to version 2.3.0

## 0.22.3

- Update resource specification document to new unspecified version

## 0.22.2

- Update resource specification document to version 2.2.0

## 0.22.1

- Update resource specification document to version 2.1.0

## 0.22.0

- Bug fix: `AWSTemplateFormatVersion` was being formatted incorrectly in JSON.

## 0.21.0

- Update resource specification document to some new unspecified version.
- Add new `nodejs8.10` to lambda

## 0.20.0

- Fix name of `AutoScalingRollingUpdatePolicy` `SuspendProcesses` parameter
- Update list of AWS Lambda `Runtime` values

## 0.19.1

- Add compatibility with GHC 8.4.1

## 0.19.0

- Fix `Equals` function requiring `Val Bool` arguments instead of `Val a`
- Add `Metadata` field to `Resource` type

## 0.18.0

- Update resource specification document to version 2.0.0
- Fix missing `AWS::ElasticLoadBalancingV2::ListenerCertificate` resource

## 0.17.0

- Fix JSON instances for non-codegen code.
- Allow the `Split` function to use `Val a` in its second argument.

## 0.16.0

- **BREAKING CHANGE**: Renamed lenses for non-generated code to match naming
  conventions of generated code.
- Update resource specification document to 1.14.0

## 0.15.2

- Update resource specification document to some unspecified new version.
- `stratosphere` now compiles with no warnings.

## 0.15.1

- Update resource specification document to version 1.13.0

## 0.15.0

- Update resource specification document to some unspecified new version.

## 0.14.0

- Update resource specification document to version 1.12.0

## 0.13.0

- Update resource specification document to version 1.11.0

## 0.12.0

- Update resource specification document to version 1.10.0

## 0.11.0

- Update resource specification document to version 1.8.0

## 0.10.0

- Update resource specification document to version 1.7.0

## 0.9.0

- Update resource specification document to version 1.6.0

## 0.8.0

- Update resource specification document (no version given in doc)
- GHC 8.2.1 compatibility

## 0.7.1

- Add `Export` field to the `Output` type. This allows you to declare
  cross-stack references.

## 0.7.0

- Made `Val` and `ValList` more type-safe by moving some constructors to
  `ValList` and being more specific with types in functions that only accept
  `Text` parameters. Specific examples include:
  - `Join` and `Select` now require a `ValList` argument
  - `Base64` and `Join` now work only on `Val Text`, not `Val a`
  - `GetAZs` and `Split` are now in `ValList`, not `Val`
- Created `ImportValueList` as a `ValList` alternative to `ImportValue`.
- Added support for `Fn::Sub` intrinsic function.

## 0.6.0

- **BREAKING CHANGE**: Added `ValList` type. This new type allows you to
  reference parameters that are already list types. Previously you had to use
  some kludgy workarounds. For example, you can now `Ref` a parameter of type
  `List<AWS::EC2::AvailabilityZone::Name>`.

  Every type that used to be `[Val a]` is now `ValList a`. If you use the
  `OverloadedLists` pragma, you might not have to change any of your code.
  Otherwise, you must wrap existing lists in the `ValList` constructor.

- **BREAKING CHANGE**: The newtype wrappers `Integer'`, `Bool'`, and `Double'`
  are no longer required. CloudFormation expects numbers and bools to be JSON
  strings. These newtypes used to be necessary so we didn't use JSON
  numbers/bools. Now the conversion is handled internally, and users don't need
  to worry about this when using `stratosphere`.

## 0.5.0

- Update resource specification document (no version given)

## 0.4.4

- Update the resource specification document to version `1.4.2`

## 0.4.3

- Update the resource specification document to version `1.4.1`

## 0.4.2

- Update the resource specification document to version `1.2.1`

## 0.4.1

- Manually write out all JSON instances to speed up compilation
- Fix bug in CloudFormation specification where `EvaluationPeriods` was
  accidentally set to `Double`.

## 0.4.0

- Derive the `Eq` type class for everything. This is useful when comparing two
  templates.
- Added the new `Fn::Split` function.
- Fix error in resource specification document where
  `AWS::AutoScaling::AutoScalingGroup.Tags` was mistakenly called `AsTags`.
- Fix error in resource specification document where the two properties `Image`
  and `Name` in `AWS::ECS::TaskDefinition.ContainerDefinition` were incorrectly
  marked as _not_ required, even though they are required.
- Fix JSON instances for auto scaling group update policies

## 0.3.1

- Updated resource specification document to version 1.1.1.

## 0.3.0

- **Backwards-incompatible**: We now use the official AWS JSON spec document to
  auto-generate types. This means there is no more Python scraper and custom
  JSON schemas. The behavior of the library is exactly the same, but a ton of
  resource names changed to match official the official AWS names. On the plus
  side, we now have 100% service coverage!

## 0.2.2

- Fixed a test suite failure caused by bleeding edge HLint version.

## 0.2.1

- Added Dynamo DB table resources (@ababkin)
- Fix the Python docs scraper mishandling the `required` value in some cases,
  and also missing some properties of resources (@amar47shah)
- Added a ton of SNS and SQS resources (@ababkin)
- Added a experimental checker for duplicate resource names (@amar47shah)

## 0.2.0

- Breaking change: The `DependsOn` property previously allowed lists of
  `Val Text`, when in fact CloudFormation only accepts literal `Text` values.
  The new type of `DependsOn` is `Maybe [Text]`.
- Added `AWS::ElastiCache::CacheCluster` resource (@MichaelXavier)
- Added many `AWS::Lambda` resources and associated resource properties
  (@ababkin)
- Added new `ImportValue` CloudFormation function (@timmytofu)
- Added tons of AWS Kineses resources (@MichaelXavier)
- Added a lot of Api Gateway resources (@ababkin)
- Allow setting `LensPrefix` in JSON model files to avoid name collisions
  (https://github.com/frontrowed/stratosphere/issues/27)

## 0.1.6

- Fix Haddock parsing for `FindInMap`. We now run haddock in CircleCI so we
  shouldn't see a regression like this in the future.

## 0.1.5

- Added S3 buckets and bucket policies
- Added CloudTrail Trail (Thanks @timmytofu!)
- Added the `FindInMap` intrinsic function. (Thanks @MichaelXavier!)
- Added `SecurityGroupEgress` and `SecurityGroupIngress` rules. (Thanks
  @MichaelXavier!)
- Fixed type of ELB policy using the more specific `NameAndValue` type. (Thanks
  @MichaelXavier!)

## 0.1.4

- Added `UserName` property to the IAM User resource. (Thanks @timmytofu!)
- Added IAM Group and Role name parameters. (Thanks again @timmytofu!)

## 0.1.3

- Update `aeson-pretty` to version 0.8 so we can stay in stackage nightly.
- Fix not exporting resource name lens.

## 0.1.2.1

- Removed some dependencies that crept in so we can build against stackage
  nightly and use GHC 8. These were actually dependencies of `stratosphere-gen`
  and aren't needed for `stratosphere`.

## 0.1.2

- Added all of the resources and resource properties for Auto Scaling Groups.
- New AutoScalingGroup example
- Added UpdatePolicy, CreationPolicy, and DependsOn

## 0.1.1

- Small bug fix for "style" test when using the cabal distribution

## 0.1 (initial release)

- Initial release with all Template components implemented along with a huge set
  of Resources.
