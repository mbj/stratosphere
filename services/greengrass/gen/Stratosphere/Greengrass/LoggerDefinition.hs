module Stratosphere.Greengrass.LoggerDefinition (
        module Exports, LoggerDefinition(..), mkLoggerDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.LoggerDefinition.LoggerDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggerDefinition
  = LoggerDefinition {initialVersion :: (Prelude.Maybe LoggerDefinitionVersionProperty),
                      name :: (Value Prelude.Text),
                      tags :: (Prelude.Maybe JSON.Object)}
mkLoggerDefinition :: Value Prelude.Text -> LoggerDefinition
mkLoggerDefinition name
  = LoggerDefinition
      {name = name, initialVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LoggerDefinition where
  toResourceProperties LoggerDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::LoggerDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LoggerDefinition where
  toJSON LoggerDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" LoggerDefinition where
  type PropertyType "InitialVersion" LoggerDefinition = LoggerDefinitionVersionProperty
  set newValue LoggerDefinition {..}
    = LoggerDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" LoggerDefinition where
  type PropertyType "Name" LoggerDefinition = Value Prelude.Text
  set newValue LoggerDefinition {..}
    = LoggerDefinition {name = newValue, ..}
instance Property "Tags" LoggerDefinition where
  type PropertyType "Tags" LoggerDefinition = JSON.Object
  set newValue LoggerDefinition {..}
    = LoggerDefinition {tags = Prelude.pure newValue, ..}