module Stratosphere.ServiceCatalog.TagOptionAssociation (
        TagOptionAssociation(..), mkTagOptionAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagOptionAssociation
  = TagOptionAssociation {resourceId :: (Value Prelude.Text),
                          tagOptionId :: (Value Prelude.Text)}
mkTagOptionAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> TagOptionAssociation
mkTagOptionAssociation resourceId tagOptionId
  = TagOptionAssociation
      {resourceId = resourceId, tagOptionId = tagOptionId}
instance ToResourceProperties TagOptionAssociation where
  toResourceProperties TagOptionAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::TagOptionAssociation",
         properties = ["ResourceId" JSON..= resourceId,
                       "TagOptionId" JSON..= tagOptionId]}
instance JSON.ToJSON TagOptionAssociation where
  toJSON TagOptionAssociation {..}
    = JSON.object
        ["ResourceId" JSON..= resourceId,
         "TagOptionId" JSON..= tagOptionId]
instance Property "ResourceId" TagOptionAssociation where
  type PropertyType "ResourceId" TagOptionAssociation = Value Prelude.Text
  set newValue TagOptionAssociation {..}
    = TagOptionAssociation {resourceId = newValue, ..}
instance Property "TagOptionId" TagOptionAssociation where
  type PropertyType "TagOptionId" TagOptionAssociation = Value Prelude.Text
  set newValue TagOptionAssociation {..}
    = TagOptionAssociation {tagOptionId = newValue, ..}