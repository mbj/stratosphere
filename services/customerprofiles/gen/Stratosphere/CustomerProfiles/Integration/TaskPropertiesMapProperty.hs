module Stratosphere.CustomerProfiles.Integration.TaskPropertiesMapProperty (
        TaskPropertiesMapProperty(..), mkTaskPropertiesMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskPropertiesMapProperty
  = TaskPropertiesMapProperty {operatorPropertyKey :: (Value Prelude.Text),
                               property :: (Value Prelude.Text)}
mkTaskPropertiesMapProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TaskPropertiesMapProperty
mkTaskPropertiesMapProperty operatorPropertyKey property
  = TaskPropertiesMapProperty
      {operatorPropertyKey = operatorPropertyKey, property = property}
instance ToResourceProperties TaskPropertiesMapProperty where
  toResourceProperties TaskPropertiesMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.TaskPropertiesMap",
         properties = ["OperatorPropertyKey" JSON..= operatorPropertyKey,
                       "Property" JSON..= property]}
instance JSON.ToJSON TaskPropertiesMapProperty where
  toJSON TaskPropertiesMapProperty {..}
    = JSON.object
        ["OperatorPropertyKey" JSON..= operatorPropertyKey,
         "Property" JSON..= property]
instance Property "OperatorPropertyKey" TaskPropertiesMapProperty where
  type PropertyType "OperatorPropertyKey" TaskPropertiesMapProperty = Value Prelude.Text
  set newValue TaskPropertiesMapProperty {..}
    = TaskPropertiesMapProperty {operatorPropertyKey = newValue, ..}
instance Property "Property" TaskPropertiesMapProperty where
  type PropertyType "Property" TaskPropertiesMapProperty = Value Prelude.Text
  set newValue TaskPropertiesMapProperty {..}
    = TaskPropertiesMapProperty {property = newValue, ..}