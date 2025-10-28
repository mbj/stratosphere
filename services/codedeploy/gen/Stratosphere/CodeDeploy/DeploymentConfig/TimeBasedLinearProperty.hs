module Stratosphere.CodeDeploy.DeploymentConfig.TimeBasedLinearProperty (
        TimeBasedLinearProperty(..), mkTimeBasedLinearProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedLinearProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedlinear.html>
    TimeBasedLinearProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedlinear.html#cfn-codedeploy-deploymentconfig-timebasedlinear-linearinterval>
                             linearInterval :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-timebasedlinear.html#cfn-codedeploy-deploymentconfig-timebasedlinear-linearpercentage>
                             linearPercentage :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedLinearProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> TimeBasedLinearProperty
mkTimeBasedLinearProperty linearInterval linearPercentage
  = TimeBasedLinearProperty
      {haddock_workaround_ = (), linearInterval = linearInterval,
       linearPercentage = linearPercentage}
instance ToResourceProperties TimeBasedLinearProperty where
  toResourceProperties TimeBasedLinearProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.TimeBasedLinear",
         supportsTags = Prelude.False,
         properties = ["LinearInterval" JSON..= linearInterval,
                       "LinearPercentage" JSON..= linearPercentage]}
instance JSON.ToJSON TimeBasedLinearProperty where
  toJSON TimeBasedLinearProperty {..}
    = JSON.object
        ["LinearInterval" JSON..= linearInterval,
         "LinearPercentage" JSON..= linearPercentage]
instance Property "LinearInterval" TimeBasedLinearProperty where
  type PropertyType "LinearInterval" TimeBasedLinearProperty = Value Prelude.Integer
  set newValue TimeBasedLinearProperty {..}
    = TimeBasedLinearProperty {linearInterval = newValue, ..}
instance Property "LinearPercentage" TimeBasedLinearProperty where
  type PropertyType "LinearPercentage" TimeBasedLinearProperty = Value Prelude.Integer
  set newValue TimeBasedLinearProperty {..}
    = TimeBasedLinearProperty {linearPercentage = newValue, ..}