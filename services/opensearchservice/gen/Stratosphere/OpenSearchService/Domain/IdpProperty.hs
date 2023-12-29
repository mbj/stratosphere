module Stratosphere.OpenSearchService.Domain.IdpProperty (
        IdpProperty(..), mkIdpProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdpProperty
  = IdpProperty {entityId :: (Value Prelude.Text),
                 metadataContent :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdpProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IdpProperty
mkIdpProperty entityId metadataContent
  = IdpProperty
      {entityId = entityId, metadataContent = metadataContent}
instance ToResourceProperties IdpProperty where
  toResourceProperties IdpProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.Idp",
         supportsTags = Prelude.False,
         properties = ["EntityId" JSON..= entityId,
                       "MetadataContent" JSON..= metadataContent]}
instance JSON.ToJSON IdpProperty where
  toJSON IdpProperty {..}
    = JSON.object
        ["EntityId" JSON..= entityId,
         "MetadataContent" JSON..= metadataContent]
instance Property "EntityId" IdpProperty where
  type PropertyType "EntityId" IdpProperty = Value Prelude.Text
  set newValue IdpProperty {..}
    = IdpProperty {entityId = newValue, ..}
instance Property "MetadataContent" IdpProperty where
  type PropertyType "MetadataContent" IdpProperty = Value Prelude.Text
  set newValue IdpProperty {..}
    = IdpProperty {metadataContent = newValue, ..}