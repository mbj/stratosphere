module Stratosphere.Examples.AutoScalingGroup (template) where

import Prelude

-- | Example inspired from the CreationPolicy docs:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html
import Stratosphere
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy
import Stratosphere.ResourceAttributes.CreationPolicy
import Stratosphere.ResourceAttributes.ResourceSignal
import Stratosphere.ResourceAttributes.UpdatePolicy

import qualified Stratosphere.AutoScaling.AutoScalingGroup    as AutoScaling
import qualified Stratosphere.AutoScaling.LaunchConfiguration as AutoScaling

template :: Template
template =
  mkTemplate
  [ autoScalingGroup
  , launchConfiguration
  ]
  & set @"Parameters"
    [ mkParameter "AvailabilityZones" "List<AWS::EC2::AvailabilityZone::Name>"
    ]
  & set @"Description" "Auto scaling group example"

autoScalingGroup :: Resource
autoScalingGroup
  = set @"CreationPolicy" creationPolicy
  . set @"UpdatePolicy"   updatePolicy
  . resource "AutoScalingGroup"
  $ AutoScaling.mkAutoScalingGroup "1" "4"
  & set @"AvailabilityZones"       (RefList "AvailabilityZones")
  & set @"DesiredCapacity"         "3"
  & set @"LaunchConfigurationName" (Ref "LaunchConfig")
  & set @"TerminationPolicies"     ["OldestLaunchConfiguration", "ClosestToNextInstanceHour"]
  where
    creationPolicy
      = mkCreationPolicy
      $ mkResourceSignal
      & set @"Count"   (Literal 3)
      & set @"Timeout" "PT15M"

    updatePolicy
      = mkUpdatePolicy
      & set @"ScheduledAction" scheduledAction
      & set @"RollingUpdate" rollingUpdatePolicy
      where
        scheduledAction
          = mkAutoScalingScheduledActionPolicy
          & set @"IgnoreUnmodifiedGroupSizeProperties" (Literal True)

        rollingUpdatePolicy
          = mkAutoScalingRollingUpdatePolicy
          & set @"MinInstancesInService" (Literal 1)
          & set @"MaxBatchSize"          (Literal 2)
          & set @"PauseTime"             "PT15M"
          & set @"WaitOnResourceSignals" (Literal True)

launchConfiguration :: Resource
launchConfiguration
  = resource "LaunchConfig"
  $ AutoScaling.mkLaunchConfiguration "ami-16d18a7e" "t2.micro"
