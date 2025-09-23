module Spec.AutoScalingGroup (testTree) where

import Spec.Golden (runGoldenTest)
import Stratosphere (Resource (..), Template (..))
import qualified Stratosphere
import Stratosphere.AutoScaling.AutoScalingGroup (AutoScalingGroup (..))
import qualified Stratosphere.AutoScaling.AutoScalingGroup
import qualified Stratosphere.AutoScaling.LaunchConfiguration
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy
  ( AutoScalingScheduledActionPolicy (..),
  )
import qualified Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy
import qualified Stratosphere.ResourceAttributes.CreationPolicy
import Stratosphere.ResourceAttributes.ResourceSignal (ResourceSignal (..))
import qualified Stratosphere.ResourceAttributes.ResourceSignal
import Stratosphere.ResourceAttributes.UpdatePolicy (UpdatePolicy (..))
import qualified Stratosphere.ResourceAttributes.UpdatePolicy
import Test.Tasty (TestTree)
import Prelude

autoScalingGroup :: Stratosphere.Resource
autoScalingGroup =
  let autoScalingGroupResource =
        (Stratosphere.AutoScaling.AutoScalingGroup.mkAutoScalingGroup "1" "4")
          { availabilityZones = Just (Stratosphere.RefList "AvailabilityZones"),
            desiredCapacity = Just "3",
            launchConfigurationName = Just (Stratosphere.Ref "LaunchConfig"),
            terminationPolicies = Just ["OldestLaunchConfiguration", "ClosesToNextInstanceHour"]
          }
      resource =
        Stratosphere.resource
          "AutoScalingGroup"
          autoScalingGroupResource
   in resource
        { creationPolicy = Just creationPolicy,
          updatePolicy = Just updatePolicy
        }
  where
    creationPolicy ::
      Stratosphere.ResourceAttributes.CreationPolicy.CreationPolicy
    creationPolicy =
      Stratosphere.ResourceAttributes.CreationPolicy.mkCreationPolicy
        ( Stratosphere.ResourceAttributes.ResourceSignal.mkResourceSignal
            { count = Just (Stratosphere.Literal 3),
              timeout = Just "PT15M"
            }
        )

    updatePolicy ::
      Stratosphere.ResourceAttributes.UpdatePolicy.UpdatePolicy
    updatePolicy =
      Stratosphere.ResourceAttributes.UpdatePolicy.mkUpdatePolicy
        { scheduledAction =
            Just
              ( Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy.mkAutoScalingScheduledActionPolicy
                  { ignoreUnmodifiedGroupSizeProperties = Just (Stratosphere.Literal True)
                  }
              )
        }

launchConfiguration :: Stratosphere.Resource
launchConfiguration =
  Stratosphere.resource
    "LaunchConfig"
    ( Stratosphere.AutoScaling.LaunchConfiguration.mkLaunchConfiguration
        "ami-16d18a7e"
        "t2.micro"
    )

template :: Stratosphere.Template
template =
  (Stratosphere.mkTemplate [autoScalingGroup, launchConfiguration])
    { parameters =
        Just
          [ Stratosphere.mkParameter "AvailabilityZones" "List<AWS::EC2::AvailabilityZones::Name>"
          ]
    }

testTree :: TestTree
testTree = runGoldenTest "autoscaling.json" template
