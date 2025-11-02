module Stratosphere.EC2.ClientVpnEndpoint.TagSpecificationProperty (
        TagSpecificationProperty(..), mkTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TagSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html>
    TagSpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-resourcetype>
                              resourceType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-tags>
                              tags :: [Tag]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagSpecificationProperty ::
  Value Prelude.Text -> [Tag] -> TagSpecificationProperty
mkTagSpecificationProperty resourceType tags
  = TagSpecificationProperty
      {haddock_workaround_ = (), resourceType = resourceType,
       tags = tags}
instance ToResourceProperties TagSpecificationProperty where
  toResourceProperties TagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.TagSpecification",
         supportsTags = Prelude.True,
         properties = ["ResourceType" JSON..= resourceType,
                       "Tags" JSON..= tags]}
instance JSON.ToJSON TagSpecificationProperty where
  toJSON TagSpecificationProperty {..}
    = JSON.object
        ["ResourceType" JSON..= resourceType, "Tags" JSON..= tags]
instance Property "ResourceType" TagSpecificationProperty where
  type PropertyType "ResourceType" TagSpecificationProperty = Value Prelude.Text
  set newValue TagSpecificationProperty {..}
    = TagSpecificationProperty {resourceType = newValue, ..}
instance Property "Tags" TagSpecificationProperty where
  type PropertyType "Tags" TagSpecificationProperty = [Tag]
  set newValue TagSpecificationProperty {..}
    = TagSpecificationProperty {tags = newValue, ..}