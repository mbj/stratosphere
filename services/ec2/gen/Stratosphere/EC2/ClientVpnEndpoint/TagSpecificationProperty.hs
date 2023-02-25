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
  = TagSpecificationProperty {resourceType :: (Value Prelude.Text),
                              tags :: [Tag]}
mkTagSpecificationProperty ::
  Value Prelude.Text -> [Tag] -> TagSpecificationProperty
mkTagSpecificationProperty resourceType tags
  = TagSpecificationProperty
      {resourceType = resourceType, tags = tags}
instance ToResourceProperties TagSpecificationProperty where
  toResourceProperties TagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.TagSpecification",
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