module Stratosphere.SSMQuickSetup.ConfigurationManager (
        module Exports, ConfigurationManager(..), mkConfigurationManager
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMQuickSetup.ConfigurationManager.ConfigurationDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationManager
  = ConfigurationManager {configurationDefinitions :: [ConfigurationDefinitionProperty],
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationManager ::
  [ConfigurationDefinitionProperty] -> ConfigurationManager
mkConfigurationManager configurationDefinitions
  = ConfigurationManager
      {configurationDefinitions = configurationDefinitions,
       description = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ConfigurationManager where
  toResourceProperties ConfigurationManager {..}
    = ResourceProperties
        {awsType = "AWS::SSMQuickSetup::ConfigurationManager",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationDefinitions" JSON..= configurationDefinitions]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConfigurationManager where
  toJSON ConfigurationManager {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationDefinitions" JSON..= configurationDefinitions]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConfigurationDefinitions" ConfigurationManager where
  type PropertyType "ConfigurationDefinitions" ConfigurationManager = [ConfigurationDefinitionProperty]
  set newValue ConfigurationManager {..}
    = ConfigurationManager {configurationDefinitions = newValue, ..}
instance Property "Description" ConfigurationManager where
  type PropertyType "Description" ConfigurationManager = Value Prelude.Text
  set newValue ConfigurationManager {..}
    = ConfigurationManager {description = Prelude.pure newValue, ..}
instance Property "Name" ConfigurationManager where
  type PropertyType "Name" ConfigurationManager = Value Prelude.Text
  set newValue ConfigurationManager {..}
    = ConfigurationManager {name = Prelude.pure newValue, ..}
instance Property "Tags" ConfigurationManager where
  type PropertyType "Tags" ConfigurationManager = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConfigurationManager {..}
    = ConfigurationManager {tags = Prelude.pure newValue, ..}