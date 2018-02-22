{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

-- | Example inspired from the CreationPolicy docs:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html

import Control.Lens
import qualified Data.ByteString.Lazy.Char8 as B

import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate =
  template
  [ asgResource
    & resourceCreationPolicy ?~ asgCreationPolicy
    & resourceUpdatePolicy ?~ asgUpdatePolicy
  , launchConfigResource
  ]
  & templateParameters ?~
  [ parameter "AvailabilityZones" "List<AWS::EC2::AvailabilityZone::Name>"
  ]
  & templateDescription ?~ "Auto scaling group example"
  & templateFormatVersion ?~ "2010-09-09"

asgResource :: Resource
asgResource =
  resource "AutoScalingGroup" $
  AutoScalingAutoScalingGroupProperties $
  autoScalingAutoScalingGroup
  "1"
  "4"
  & asasgDesiredCapacity ?~ "3"
  & asasgLaunchConfigurationName ?~ Ref "LaunchConfig"
  & asasgAvailabilityZones ?~ RefList "AvailabilityZones"
  & asasgTerminationPolicies ?~
    [ "OldestLaunchConfiguration"
    , "ClosestToNextInstanceHour"
    ]

asgCreationPolicy :: CreationPolicy
asgCreationPolicy =
  creationPolicy $
  resourceSignal
  & rsCount ?~ Literal 3
  & rsTimeout ?~ "PT15M"

asgUpdatePolicy :: UpdatePolicy
asgUpdatePolicy =
  updatePolicy
  & upAutoScalingScheduledAction ?~ (
    autoScalingScheduledActionPolicy
    & assapIgnoreUnmodifiedGroupSizeProperties ?~ Literal True
    )
  & upAutoScalingRollingUpdate ?~ (
    autoScalingRollingUpdatePolicy
    & asrupMinInstancesInService ?~ Literal 1
    & asrupMaxBatchSize ?~ Literal 2
    & asrupPauseTime ?~ "PT15M"
    & asrupWaitOnResourceSignals ?~ Literal True
    )

launchConfigResource :: Resource
launchConfigResource =
  resource "LaunchConfig" $
  AutoScalingLaunchConfigurationProperties $
  autoScalingLaunchConfiguration
  "ami-16d18a7e"
  "t2.micro"
