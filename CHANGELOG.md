# Change Log

## 0.1.2.2

* Update `aeson-pretty` to version 0.8 so we can stay in stackage nightly.

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
