module Stratosphere.EventSchemas.Schema (
        module Exports, Schema(..), mkSchema
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EventSchemas.Schema.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Schema
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html>
    Schema {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-content>
            content :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-registryname>
            registryName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-schemaname>
            schemaName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-tags>
            tags :: (Prelude.Maybe [TagsEntryProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-type>
            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchema ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Schema
mkSchema content registryName type'
  = Schema
      {haddock_workaround_ = (), content = content,
       registryName = registryName, type' = type',
       description = Prelude.Nothing, schemaName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Schema where
  toResourceProperties Schema {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::Schema",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "RegistryName" JSON..= registryName,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SchemaName" Prelude.<$> schemaName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Schema where
  toJSON Schema {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "RegistryName" JSON..= registryName,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SchemaName" Prelude.<$> schemaName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Content" Schema where
  type PropertyType "Content" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {content = newValue, ..}
instance Property "Description" Schema where
  type PropertyType "Description" Schema = Value Prelude.Text
  set newValue Schema {..}
    = Schema {description = Prelude.pure newValue, ..}
instance Property "RegistryName" Schema where
  type PropertyType "RegistryName" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {registryName = newValue, ..}
instance Property "SchemaName" Schema where
  type PropertyType "SchemaName" Schema = Value Prelude.Text
  set newValue Schema {..}
    = Schema {schemaName = Prelude.pure newValue, ..}
instance Property "Tags" Schema where
  type PropertyType "Tags" Schema = [TagsEntryProperty]
  set newValue Schema {..}
    = Schema {tags = Prelude.pure newValue, ..}
instance Property "Type" Schema where
  type PropertyType "Type" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {type' = newValue, ..}