module Stratosphere.EventSchemas.Registry (
        module Exports, Registry(..), mkRegistry
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EventSchemas.Registry.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Registry
  = Registry {description :: (Prelude.Maybe (Value Prelude.Text)),
              registryName :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [TagsEntryProperty])}
mkRegistry :: Registry
mkRegistry
  = Registry
      {description = Prelude.Nothing, registryName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Registry where
  toResourceProperties Registry {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::Registry",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "RegistryName" Prelude.<$> registryName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Registry where
  toJSON Registry {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "RegistryName" Prelude.<$> registryName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" Registry where
  type PropertyType "Description" Registry = Value Prelude.Text
  set newValue Registry {..}
    = Registry {description = Prelude.pure newValue, ..}
instance Property "RegistryName" Registry where
  type PropertyType "RegistryName" Registry = Value Prelude.Text
  set newValue Registry {..}
    = Registry {registryName = Prelude.pure newValue, ..}
instance Property "Tags" Registry where
  type PropertyType "Tags" Registry = [TagsEntryProperty]
  set newValue Registry {..}
    = Registry {tags = Prelude.pure newValue, ..}