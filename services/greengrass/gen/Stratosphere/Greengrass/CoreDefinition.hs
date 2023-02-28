module Stratosphere.Greengrass.CoreDefinition (
        module Exports, CoreDefinition(..), mkCoreDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.CoreDefinition.CoreDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreDefinition
  = CoreDefinition {initialVersion :: (Prelude.Maybe CoreDefinitionVersionProperty),
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe JSON.Object)}
mkCoreDefinition :: Value Prelude.Text -> CoreDefinition
mkCoreDefinition name
  = CoreDefinition
      {name = name, initialVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CoreDefinition where
  toResourceProperties CoreDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::CoreDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CoreDefinition where
  toJSON CoreDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" CoreDefinition where
  type PropertyType "InitialVersion" CoreDefinition = CoreDefinitionVersionProperty
  set newValue CoreDefinition {..}
    = CoreDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" CoreDefinition where
  type PropertyType "Name" CoreDefinition = Value Prelude.Text
  set newValue CoreDefinition {..}
    = CoreDefinition {name = newValue, ..}
instance Property "Tags" CoreDefinition where
  type PropertyType "Tags" CoreDefinition = JSON.Object
  set newValue CoreDefinition {..}
    = CoreDefinition {tags = Prelude.pure newValue, ..}