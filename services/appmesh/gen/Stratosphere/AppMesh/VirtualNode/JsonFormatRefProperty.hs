module Stratosphere.AppMesh.VirtualNode.JsonFormatRefProperty (
        JsonFormatRefProperty(..), mkJsonFormatRefProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonFormatRefProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-jsonformatref.html>
    JsonFormatRefProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-jsonformatref.html#cfn-appmesh-virtualnode-jsonformatref-key>
                           key :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-jsonformatref.html#cfn-appmesh-virtualnode-jsonformatref-value>
                           value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonFormatRefProperty ::
  Value Prelude.Text -> Value Prelude.Text -> JsonFormatRefProperty
mkJsonFormatRefProperty key value
  = JsonFormatRefProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties JsonFormatRefProperty where
  toResourceProperties JsonFormatRefProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.JsonFormatRef",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON JsonFormatRefProperty where
  toJSON JsonFormatRefProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" JsonFormatRefProperty where
  type PropertyType "Key" JsonFormatRefProperty = Value Prelude.Text
  set newValue JsonFormatRefProperty {..}
    = JsonFormatRefProperty {key = newValue, ..}
instance Property "Value" JsonFormatRefProperty where
  type PropertyType "Value" JsonFormatRefProperty = Value Prelude.Text
  set newValue JsonFormatRefProperty {..}
    = JsonFormatRefProperty {value = newValue, ..}