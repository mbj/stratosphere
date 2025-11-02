module Stratosphere.Glue.Schema (
        module Exports, Schema(..), mkSchema
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Schema.RegistryProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Schema.SchemaVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Schema
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html>
    Schema {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-checkpointversion>
            checkpointVersion :: (Prelude.Maybe SchemaVersionProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-compatibility>
            compatibility :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-dataformat>
            dataFormat :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-registry>
            registry :: (Prelude.Maybe RegistryProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-schemadefinition>
            schemaDefinition :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schema.html#cfn-glue-schema-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchema ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Schema
mkSchema compatibility dataFormat name
  = Schema
      {haddock_workaround_ = (), compatibility = compatibility,
       dataFormat = dataFormat, name = name,
       checkpointVersion = Prelude.Nothing, description = Prelude.Nothing,
       registry = Prelude.Nothing, schemaDefinition = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Schema where
  toResourceProperties Schema {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Schema", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Compatibility" JSON..= compatibility,
                            "DataFormat" JSON..= dataFormat, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CheckpointVersion" Prelude.<$> checkpointVersion,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Registry" Prelude.<$> registry,
                               (JSON..=) "SchemaDefinition" Prelude.<$> schemaDefinition,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Schema where
  toJSON Schema {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Compatibility" JSON..= compatibility,
               "DataFormat" JSON..= dataFormat, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CheckpointVersion" Prelude.<$> checkpointVersion,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Registry" Prelude.<$> registry,
                  (JSON..=) "SchemaDefinition" Prelude.<$> schemaDefinition,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CheckpointVersion" Schema where
  type PropertyType "CheckpointVersion" Schema = SchemaVersionProperty
  set newValue Schema {..}
    = Schema {checkpointVersion = Prelude.pure newValue, ..}
instance Property "Compatibility" Schema where
  type PropertyType "Compatibility" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {compatibility = newValue, ..}
instance Property "DataFormat" Schema where
  type PropertyType "DataFormat" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {dataFormat = newValue, ..}
instance Property "Description" Schema where
  type PropertyType "Description" Schema = Value Prelude.Text
  set newValue Schema {..}
    = Schema {description = Prelude.pure newValue, ..}
instance Property "Name" Schema where
  type PropertyType "Name" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {name = newValue, ..}
instance Property "Registry" Schema where
  type PropertyType "Registry" Schema = RegistryProperty
  set newValue Schema {..}
    = Schema {registry = Prelude.pure newValue, ..}
instance Property "SchemaDefinition" Schema where
  type PropertyType "SchemaDefinition" Schema = Value Prelude.Text
  set newValue Schema {..}
    = Schema {schemaDefinition = Prelude.pure newValue, ..}
instance Property "Tags" Schema where
  type PropertyType "Tags" Schema = [Tag]
  set newValue Schema {..}
    = Schema {tags = Prelude.pure newValue, ..}