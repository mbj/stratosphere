module Stratosphere.VerifiedPermissions.Policy.EntityIdentifierProperty (
        EntityIdentifierProperty(..), mkEntityIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-entityidentifier.html>
    EntityIdentifierProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-entityidentifier.html#cfn-verifiedpermissions-policy-entityidentifier-entityid>
                              entityId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-entityidentifier.html#cfn-verifiedpermissions-policy-entityidentifier-entitytype>
                              entityType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EntityIdentifierProperty
mkEntityIdentifierProperty entityId entityType
  = EntityIdentifierProperty
      {haddock_workaround_ = (), entityId = entityId,
       entityType = entityType}
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