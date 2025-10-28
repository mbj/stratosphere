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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html>
    AwsCloudMapInstanceAttributeProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-key>
                                          key :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-value>
                                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsCloudMapInstanceAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AwsCloudMapInstanceAttributeProperty
mkAwsCloudMapInstanceAttributeProperty key value
  = AwsCloudMapInstanceAttributeProperty
      {haddock_workaround_ = (), key = key, value = value}
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