module Stratosphere.Glue.Schema.SchemaVersionProperty (
        SchemaVersionProperty(..), mkSchemaVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-schema-schemaversion.html>
    SchemaVersionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-schema-schemaversion.html#cfn-glue-schema-schemaversion-islatest>
                           isLatest :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-schema-schemaversion.html#cfn-glue-schema-schemaversion-versionnumber>
                           versionNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaVersionProperty :: SchemaVersionProperty
mkSchemaVersionProperty
  = SchemaVersionProperty
      {haddock_workaround_ = (), isLatest = Prelude.Nothing,
       versionNumber = Prelude.Nothing}
instance ToResourceProperties SchemaVersionProperty where
  toResourceProperties SchemaVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Schema.SchemaVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsLatest" Prelude.<$> isLatest,
                            (JSON..=) "VersionNumber" Prelude.<$> versionNumber])}
instance JSON.ToJSON SchemaVersionProperty where
  toJSON SchemaVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsLatest" Prelude.<$> isLatest,
               (JSON..=) "VersionNumber" Prelude.<$> versionNumber]))
instance Property "IsLatest" SchemaVersionProperty where
  type PropertyType "IsLatest" SchemaVersionProperty = Value Prelude.Bool
  set newValue SchemaVersionProperty {..}
    = SchemaVersionProperty {isLatest = Prelude.pure newValue, ..}
instance Property "VersionNumber" SchemaVersionProperty where
  type PropertyType "VersionNumber" SchemaVersionProperty = Value Prelude.Integer
  set newValue SchemaVersionProperty {..}
    = SchemaVersionProperty {versionNumber = Prelude.pure newValue, ..}