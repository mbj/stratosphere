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
  = Schema {content :: (Value Prelude.Text),
            description :: (Prelude.Maybe (Value Prelude.Text)),
            registryName :: (Value Prelude.Text),
            schemaName :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [TagsEntryProperty]),
            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchema ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Schema
mkSchema content registryName type'
  = Schema
      {content = content, registryName = registryName, type' = type',
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