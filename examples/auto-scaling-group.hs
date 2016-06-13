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
    & resCreationPolicy ?~ asgCreationPolicy
    & resUpdatePolicy ?~ asgUpdatePolicy
  , launchConfigResource
  ]
  & description ?~ "Auto scaling group example"
  & formatVersion ?~ "2010-09-09"

asgResource :: Resource
asgResource =
  resource "AutoScalingGroup" $
  AutoScalingGroupProperties $
  autoScalingGroup
  "1"
  "4"
  & asgDesiredCapacity ?~ "3"
  & asgLaunchConfigurationName ?~ Ref "LaunchConfig"

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
    autoScalingScheduledAction
    & assaIgnoreUnmodifiedGroupSizeProperties ?~ Literal True'
    )
  & upAutoScalingRollingUpdate ?~ (
    autoScalingRollingUpdate
    & asruMinInstancesInService ?~ Literal 1
    & asruMaxBatchSize ?~ Literal 2
    & asruPauseTime ?~ "PT15M"
    & asruWaitOnResourceSignals ?~ Literal True'
    )

launchConfigResource :: Resource
launchConfigResource =
  resource "LaunchConfig" $
  LaunchConfigurationProperties $
  launchConfiguration
  "ami-16d18a7e"
  "t2.micro"
