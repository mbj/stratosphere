module Stratosphere.CustomerProfiles.Integration.ObjectTypeMappingProperty (
        ObjectTypeMappingProperty(..), mkObjectTypeMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectTypeMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-objecttypemapping.html>
    ObjectTypeMappingProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-objecttypemapping.html#cfn-customerprofiles-integration-objecttypemapping-key>
                               key :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-objecttypemapping.html#cfn-customerprofiles-integration-objecttypemapping-value>
                               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectTypeMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ObjectTypeMappingProperty
mkObjectTypeMappingProperty key value
  = ObjectTypeMappingProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties ObjectTypeMappingProperty where
  toResourceProperties ObjectTypeMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.ObjectTypeMapping",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ObjectTypeMappingProperty where
  toJSON ObjectTypeMappingProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ObjectTypeMappingProperty where
  type PropertyType "Key" ObjectTypeMappingProperty = Value Prelude.Text
  set newValue ObjectTypeMappingProperty {..}
    = ObjectTypeMappingProperty {key = newValue, ..}
instance Property "Value" ObjectTypeMappingProperty where
  type PropertyType "Value" ObjectTypeMappingProperty = Value Prelude.Text
  set newValue ObjectTypeMappingProperty {..}
    = ObjectTypeMappingProperty {value = newValue, ..}