module Stratosphere.CodeStarNotifications.NotificationRule.TargetProperty (
        TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = TargetProperty {targetAddress :: (Value Prelude.Text),
                    targetType :: (Value Prelude.Text)}
mkTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TargetProperty
mkTargetProperty targetAddress targetType
  = TargetProperty
      {targetAddress = targetAddress, targetType = targetType}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarNotifications::NotificationRule.Target",
         supportsTags = Prelude.False,
         properties = ["TargetAddress" JSON..= targetAddress,
                       "TargetType" JSON..= targetType]}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object
        ["TargetAddress" JSON..= targetAddress,
         "TargetType" JSON..= targetType]
instance Property "TargetAddress" TargetProperty where
  type PropertyType "TargetAddress" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {targetAddress = newValue, ..}
instance Property "TargetType" TargetProperty where
  type PropertyType "TargetType" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {targetType = newValue, ..}