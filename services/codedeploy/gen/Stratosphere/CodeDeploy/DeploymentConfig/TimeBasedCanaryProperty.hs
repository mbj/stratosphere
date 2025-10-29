module Stratosphere.CodeDeploy.DeploymentConfig.TimeBasedCanaryProperty (
        TimeBasedCanaryProperty(..), mkTimeBasedCanaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedCanaryProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedcanary.html>
    TimeBasedCanaryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedcanary.html#cfn-codedeploy-deploymentconfig-timebasedcanary-canaryinterval>
                             canaryInterval :: (Value Prelude.Integer),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedcanary.html#cfn-codedeploy-deploymentconfig-timebasedcanary-canarypercentage>
                             canaryPercentage :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedCanaryProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> TimeBasedCanaryProperty
mkTimeBasedCanaryProperty canaryInterval canaryPercentage
  = TimeBasedCanaryProperty
      {canaryInterval = canaryInterval,
       canaryPercentage = canaryPercentage}
instance ToResourceProperties TimeBasedCanaryProperty where
  toResourceProperties TimeBasedCanaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.TimeBasedCanary",
         supportsTags = Prelude.False,
         properties = ["CanaryInterval" JSON..= canaryInterval,
                       "CanaryPercentage" JSON..= canaryPercentage]}
instance JSON.ToJSON TimeBasedCanaryProperty where
  toJSON TimeBasedCanaryProperty {..}
    = JSON.object
        ["CanaryInterval" JSON..= canaryInterval,
         "CanaryPercentage" JSON..= canaryPercentage]
instance Property "CanaryInterval" TimeBasedCanaryProperty where
  type PropertyType "CanaryInterval" TimeBasedCanaryProperty = Value Prelude.Integer
  set newValue TimeBasedCanaryProperty {..}
    = TimeBasedCanaryProperty {canaryInterval = newValue, ..}
instance Property "CanaryPercentage" TimeBasedCanaryProperty where
  type PropertyType "CanaryPercentage" TimeBasedCanaryProperty = Value Prelude.Integer
  set newValue TimeBasedCanaryProperty {..}
    = TimeBasedCanaryProperty {canaryPercentage = newValue, ..}