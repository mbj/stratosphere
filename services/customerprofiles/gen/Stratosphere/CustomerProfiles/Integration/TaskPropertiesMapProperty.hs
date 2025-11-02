module Stratosphere.CustomerProfiles.Integration.TaskPropertiesMapProperty (
        TaskPropertiesMapProperty(..), mkTaskPropertiesMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskPropertiesMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-taskpropertiesmap.html>
    TaskPropertiesMapProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-taskpropertiesmap.html#cfn-customerprofiles-integration-taskpropertiesmap-operatorpropertykey>
                               operatorPropertyKey :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-taskpropertiesmap.html#cfn-customerprofiles-integration-taskpropertiesmap-property>
                               property :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskPropertiesMapProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TaskPropertiesMapProperty
mkTaskPropertiesMapProperty operatorPropertyKey property
  = TaskPropertiesMapProperty
      {haddock_workaround_ = (),
       operatorPropertyKey = operatorPropertyKey, property = property}
instance ToResourceProperties TaskPropertiesMapProperty where
  toResourceProperties TaskPropertiesMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.TaskPropertiesMap",
         supportsTags = Prelude.False,
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