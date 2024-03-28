module Stratosphere.VerifiedPermissions.PolicyStore.SchemaDefinitionProperty (
        SchemaDefinitionProperty(..), mkSchemaDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaDefinitionProperty
  = SchemaDefinitionProperty {cedarJson :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaDefinitionProperty :: SchemaDefinitionProperty
mkSchemaDefinitionProperty
  = SchemaDefinitionProperty {cedarJson = Prelude.Nothing}
instance ToResourceProperties SchemaDefinitionProperty where
  toResourceProperties SchemaDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyStore.SchemaDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "CedarJson" Prelude.<$> cedarJson])}
instance JSON.ToJSON SchemaDefinitionProperty where
  toJSON SchemaDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "CedarJson" Prelude.<$> cedarJson]))
instance Property "CedarJson" SchemaDefinitionProperty where
  type PropertyType "CedarJson" SchemaDefinitionProperty = Value Prelude.Text
  set newValue SchemaDefinitionProperty {}
    = SchemaDefinitionProperty {cedarJson = Prelude.pure newValue, ..}