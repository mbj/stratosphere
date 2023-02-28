module Stratosphere.CodeDeploy.DeploymentConfig.TimeBasedLinearProperty (
        TimeBasedLinearProperty(..), mkTimeBasedLinearProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedLinearProperty
  = TimeBasedLinearProperty {linearInterval :: (Value Prelude.Integer),
                             linearPercentage :: (Value Prelude.Integer)}
mkTimeBasedLinearProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> TimeBasedLinearProperty
mkTimeBasedLinearProperty linearInterval linearPercentage
  = TimeBasedLinearProperty
      {linearInterval = linearInterval,
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