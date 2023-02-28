module Stratosphere.EMR.InstanceGroupConfig.ScalingConstraintsProperty (
        ScalingConstraintsProperty(..), mkScalingConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConstraintsProperty
  = ScalingConstraintsProperty {maxCapacity :: (Value Prelude.Integer),
                                minCapacity :: (Value Prelude.Integer)}
mkScalingConstraintsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ScalingConstraintsProperty
mkScalingConstraintsProperty maxCapacity minCapacity
  = ScalingConstraintsProperty
      {maxCapacity = maxCapacity, minCapacity = minCapacity}
instance ToResourceProperties ScalingConstraintsProperty where
  toResourceProperties ScalingConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.ScalingConstraints",
         supportsTags = Prelude.False,
         properties = ["MaxCapacity" JSON..= maxCapacity,
                       "MinCapacity" JSON..= minCapacity]}
instance JSON.ToJSON ScalingConstraintsProperty where
  toJSON ScalingConstraintsProperty {..}
    = JSON.object
        ["MaxCapacity" JSON..= maxCapacity,
         "MinCapacity" JSON..= minCapacity]
instance Property "MaxCapacity" ScalingConstraintsProperty where
  type PropertyType "MaxCapacity" ScalingConstraintsProperty = Value Prelude.Integer
  set newValue ScalingConstraintsProperty {..}
    = ScalingConstraintsProperty {maxCapacity = newValue, ..}
instance Property "MinCapacity" ScalingConstraintsProperty where
  type PropertyType "MinCapacity" ScalingConstraintsProperty = Value Prelude.Integer
  set newValue ScalingConstraintsProperty {..}
    = ScalingConstraintsProperty {minCapacity = newValue, ..}