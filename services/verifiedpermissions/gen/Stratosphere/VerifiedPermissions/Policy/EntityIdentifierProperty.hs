module Stratosphere.VerifiedPermissions.Policy.EntityIdentifierProperty (
        EntityIdentifierProperty(..), mkEntityIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityIdentifierProperty
  = EntityIdentifierProperty {entityId :: (Value Prelude.Text),
                              entityType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EntityIdentifierProperty
mkEntityIdentifierProperty entityId entityType
  = EntityIdentifierProperty
      {entityId = entityId, entityType = entityType}
instance ToResourceProperties EntityIdentifierProperty where
  toResourceProperties EntityIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::Policy.EntityIdentifier",
         supportsTags = Prelude.False,
         properties = ["EntityId" JSON..= entityId,
                       "EntityType" JSON..= entityType]}
instance JSON.ToJSON EntityIdentifierProperty where
  toJSON EntityIdentifierProperty {..}
    = JSON.object
        ["EntityId" JSON..= entityId, "EntityType" JSON..= entityType]
instance Property "EntityId" EntityIdentifierProperty where
  type PropertyType "EntityId" EntityIdentifierProperty = Value Prelude.Text
  set newValue EntityIdentifierProperty {..}
    = EntityIdentifierProperty {entityId = newValue, ..}
instance Property "EntityType" EntityIdentifierProperty where
  type PropertyType "EntityType" EntityIdentifierProperty = Value Prelude.Text
  set newValue EntityIdentifierProperty {..}
    = EntityIdentifierProperty {entityType = newValue, ..}