module Stratosphere.ApplicationInsights.Application.ComponentConfigurationProperty (
        module Exports, ComponentConfigurationProperty(..),
        mkComponentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.ConfigurationDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.SubComponentTypeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComponentConfigurationProperty
  = ComponentConfigurationProperty {configurationDetails :: (Prelude.Maybe ConfigurationDetailsProperty),
                                    subComponentTypeConfigurations :: (Prelude.Maybe [SubComponentTypeConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentConfigurationProperty :: ComponentConfigurationProperty
mkComponentConfigurationProperty
  = ComponentConfigurationProperty
      {configurationDetails = Prelude.Nothing,
       subComponentTypeConfigurations = Prelude.Nothing}
instance ToResourceProperties ComponentConfigurationProperty where
  toResourceProperties ComponentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.ComponentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationDetails" Prelude.<$> configurationDetails,
                            (JSON..=) "SubComponentTypeConfigurations"
                              Prelude.<$> subComponentTypeConfigurations])}
instance JSON.ToJSON ComponentConfigurationProperty where
  toJSON ComponentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationDetails" Prelude.<$> configurationDetails,
               (JSON..=) "SubComponentTypeConfigurations"
                 Prelude.<$> subComponentTypeConfigurations]))
instance Property "ConfigurationDetails" ComponentConfigurationProperty where
  type PropertyType "ConfigurationDetails" ComponentConfigurationProperty = ConfigurationDetailsProperty
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {configurationDetails = Prelude.pure newValue, ..}
instance Property "SubComponentTypeConfigurations" ComponentConfigurationProperty where
  type PropertyType "SubComponentTypeConfigurations" ComponentConfigurationProperty = [SubComponentTypeConfigurationProperty]
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {subComponentTypeConfigurations = Prelude.pure newValue, ..}