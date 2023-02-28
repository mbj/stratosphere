module Stratosphere.GameLift.GameServerGroup.TargetTrackingConfigurationProperty (
        TargetTrackingConfigurationProperty(..),
        mkTargetTrackingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingConfigurationProperty
  = TargetTrackingConfigurationProperty {targetValue :: (Value Prelude.Double)}
mkTargetTrackingConfigurationProperty ::
  Value Prelude.Double -> TargetTrackingConfigurationProperty
mkTargetTrackingConfigurationProperty targetValue
  = TargetTrackingConfigurationProperty {targetValue = targetValue}
instance ToResourceProperties TargetTrackingConfigurationProperty where
  toResourceProperties TargetTrackingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.TargetTrackingConfiguration",
         supportsTags = Prelude.False,
         properties = ["TargetValue" JSON..= targetValue]}
instance JSON.ToJSON TargetTrackingConfigurationProperty where
  toJSON TargetTrackingConfigurationProperty {..}
    = JSON.object ["TargetValue" JSON..= targetValue]
instance Property "TargetValue" TargetTrackingConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingConfigurationProperty {}
    = TargetTrackingConfigurationProperty {targetValue = newValue, ..}