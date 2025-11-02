module Stratosphere.Glue.SchemaVersion (
        module Exports, SchemaVersion(..), mkSchemaVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.SchemaVersion.SchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversion.html>
    SchemaVersion {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversion.html#cfn-glue-schemaversion-schema>
                   schema :: SchemaProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversion.html#cfn-glue-schemaversion-schemadefinition>
                   schemaDefinition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaVersion ::
  SchemaProperty -> Value Prelude.Text -> SchemaVersion
mkSchemaVersion schema schemaDefinition
  = SchemaVersion
      {haddock_workaround_ = (), schema = schema,
       schemaDefinition = schemaDefinition}
instance ToResourceProperties SchemaVersion where
  toResourceProperties SchemaVersion {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SchemaVersion",
         supportsTags = Prelude.False,
         properties = ["Schema" JSON..= schema,
                       "SchemaDefinition" JSON..= schemaDefinition]}
instance JSON.ToJSON SchemaVersion where
  toJSON SchemaVersion {..}
    = JSON.object
        ["Schema" JSON..= schema,
         "SchemaDefinition" JSON..= schemaDefinition]
instance Property "Schema" SchemaVersion where
  type PropertyType "Schema" SchemaVersion = SchemaProperty
  set newValue SchemaVersion {..}
    = SchemaVersion {schema = newValue, ..}
instance Property "SchemaDefinition" SchemaVersion where
  type PropertyType "SchemaDefinition" SchemaVersion = Value Prelude.Text
  set newValue SchemaVersion {..}
    = SchemaVersion {schemaDefinition = newValue, ..}