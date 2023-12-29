module Stratosphere.AppMesh.VirtualNode.AwsCloudMapInstanceAttributeProperty (
        AwsCloudMapInstanceAttributeProperty(..),
        mkAwsCloudMapInstanceAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsCloudMapInstanceAttributeProperty
  = AwsCloudMapInstanceAttributeProperty {key :: (Value Prelude.Text),
                                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsCloudMapInstanceAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AwsCloudMapInstanceAttributeProperty
mkAwsCloudMapInstanceAttributeProperty key value
  = AwsCloudMapInstanceAttributeProperty {key = key, value = value}
instance ToResourceProperties AwsCloudMapInstanceAttributeProperty where
  toResourceProperties AwsCloudMapInstanceAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.AwsCloudMapInstanceAttribute",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON AwsCloudMapInstanceAttributeProperty where
  toJSON AwsCloudMapInstanceAttributeProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" AwsCloudMapInstanceAttributeProperty where
  type PropertyType "Key" AwsCloudMapInstanceAttributeProperty = Value Prelude.Text
  set newValue AwsCloudMapInstanceAttributeProperty {..}
    = AwsCloudMapInstanceAttributeProperty {key = newValue, ..}
instance Property "Value" AwsCloudMapInstanceAttributeProperty where
  type PropertyType "Value" AwsCloudMapInstanceAttributeProperty = Value Prelude.Text
  set newValue AwsCloudMapInstanceAttributeProperty {..}
    = AwsCloudMapInstanceAttributeProperty {value = newValue, ..}