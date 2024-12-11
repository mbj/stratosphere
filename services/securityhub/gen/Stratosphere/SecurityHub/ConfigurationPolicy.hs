module Stratosphere.SecurityHub.ConfigurationPolicy (
        module Exports, ConfigurationPolicy(..), mkConfigurationPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.PolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationPolicy
  = ConfigurationPolicy {configurationPolicy :: PolicyProperty,
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Value Prelude.Text),
                         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationPolicy ::
  PolicyProperty -> Value Prelude.Text -> ConfigurationPolicy
mkConfigurationPolicy configurationPolicy name
  = ConfigurationPolicy
      {configurationPolicy = configurationPolicy, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConfigurationPolicy where
  toResourceProperties ConfigurationPolicy {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationPolicy" JSON..= configurationPolicy,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConfigurationPolicy where
  toJSON ConfigurationPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationPolicy" JSON..= configurationPolicy,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConfigurationPolicy" ConfigurationPolicy where
  type PropertyType "ConfigurationPolicy" ConfigurationPolicy = PolicyProperty
  set newValue ConfigurationPolicy {..}
    = ConfigurationPolicy {configurationPolicy = newValue, ..}
instance Property "Description" ConfigurationPolicy where
  type PropertyType "Description" ConfigurationPolicy = Value Prelude.Text
  set newValue ConfigurationPolicy {..}
    = ConfigurationPolicy {description = Prelude.pure newValue, ..}
instance Property "Name" ConfigurationPolicy where
  type PropertyType "Name" ConfigurationPolicy = Value Prelude.Text
  set newValue ConfigurationPolicy {..}
    = ConfigurationPolicy {name = newValue, ..}
instance Property "Tags" ConfigurationPolicy where
  type PropertyType "Tags" ConfigurationPolicy = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConfigurationPolicy {..}
    = ConfigurationPolicy {tags = Prelude.pure newValue, ..}