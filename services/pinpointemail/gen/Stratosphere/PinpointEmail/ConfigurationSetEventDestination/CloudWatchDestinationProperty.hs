module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.CloudWatchDestinationProperty (
        module Exports, CloudWatchDestinationProperty(..),
        mkCloudWatchDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.DimensionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CloudWatchDestinationProperty
  = CloudWatchDestinationProperty {dimensionConfigurations :: (Prelude.Maybe [DimensionConfigurationProperty])}
mkCloudWatchDestinationProperty :: CloudWatchDestinationProperty
mkCloudWatchDestinationProperty
  = CloudWatchDestinationProperty
      {dimensionConfigurations = Prelude.Nothing}
instance ToResourceProperties CloudWatchDestinationProperty where
  toResourceProperties CloudWatchDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.CloudWatchDestination",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DimensionConfigurations"
                              Prelude.<$> dimensionConfigurations])}
instance JSON.ToJSON CloudWatchDestinationProperty where
  toJSON CloudWatchDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DimensionConfigurations"
                 Prelude.<$> dimensionConfigurations]))
instance Property "DimensionConfigurations" CloudWatchDestinationProperty where
  type PropertyType "DimensionConfigurations" CloudWatchDestinationProperty = [DimensionConfigurationProperty]
  set newValue CloudWatchDestinationProperty {}
    = CloudWatchDestinationProperty
        {dimensionConfigurations = Prelude.pure newValue, ..}