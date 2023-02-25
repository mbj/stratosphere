module Stratosphere.ResourceGroups.Group.ConfigurationItemProperty (
        module Exports, ConfigurationItemProperty(..),
        mkConfigurationItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.ConfigurationParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationItemProperty
  = ConfigurationItemProperty {parameters :: (Prelude.Maybe [ConfigurationParameterProperty]),
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
mkConfigurationItemProperty :: ConfigurationItemProperty
mkConfigurationItemProperty
  = ConfigurationItemProperty
      {parameters = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ConfigurationItemProperty where
  toResourceProperties ConfigurationItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.ConfigurationItem",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ConfigurationItemProperty where
  toJSON ConfigurationItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Parameters" ConfigurationItemProperty where
  type PropertyType "Parameters" ConfigurationItemProperty = [ConfigurationParameterProperty]
  set newValue ConfigurationItemProperty {..}
    = ConfigurationItemProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "Type" ConfigurationItemProperty where
  type PropertyType "Type" ConfigurationItemProperty = Value Prelude.Text
  set newValue ConfigurationItemProperty {..}
    = ConfigurationItemProperty {type' = Prelude.pure newValue, ..}