module Stratosphere.Backup.BackupSelection.ConditionResourceTypeProperty (
        ConditionResourceTypeProperty(..), mkConditionResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionResourceTypeProperty
  = ConditionResourceTypeProperty {conditionKey :: (Value Prelude.Text),
                                   conditionType :: (Value Prelude.Text),
                                   conditionValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionResourceTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ConditionResourceTypeProperty
mkConditionResourceTypeProperty
  conditionKey
  conditionType
  conditionValue
  = ConditionResourceTypeProperty
      {conditionKey = conditionKey, conditionType = conditionType,
       conditionValue = conditionValue}
instance ToResourceProperties ConditionResourceTypeProperty where
  toResourceProperties ConditionResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.ConditionResourceType",
         supportsTags = Prelude.False,
         properties = ["ConditionKey" JSON..= conditionKey,
                       "ConditionType" JSON..= conditionType,
                       "ConditionValue" JSON..= conditionValue]}
instance JSON.ToJSON ConditionResourceTypeProperty where
  toJSON ConditionResourceTypeProperty {..}
    = JSON.object
        ["ConditionKey" JSON..= conditionKey,
         "ConditionType" JSON..= conditionType,
         "ConditionValue" JSON..= conditionValue]
instance Property "ConditionKey" ConditionResourceTypeProperty where
  type PropertyType "ConditionKey" ConditionResourceTypeProperty = Value Prelude.Text
  set newValue ConditionResourceTypeProperty {..}
    = ConditionResourceTypeProperty {conditionKey = newValue, ..}
instance Property "ConditionType" ConditionResourceTypeProperty where
  type PropertyType "ConditionType" ConditionResourceTypeProperty = Value Prelude.Text
  set newValue ConditionResourceTypeProperty {..}
    = ConditionResourceTypeProperty {conditionType = newValue, ..}
instance Property "ConditionValue" ConditionResourceTypeProperty where
  type PropertyType "ConditionValue" ConditionResourceTypeProperty = Value Prelude.Text
  set newValue ConditionResourceTypeProperty {..}
    = ConditionResourceTypeProperty {conditionValue = newValue, ..}