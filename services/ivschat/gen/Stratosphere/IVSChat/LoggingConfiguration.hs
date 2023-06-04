module Stratosphere.IVSChat.LoggingConfiguration (
        module Exports, LoggingConfiguration(..), mkLoggingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVSChat.LoggingConfiguration.DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LoggingConfiguration
  = LoggingConfiguration {destinationConfiguration :: DestinationConfigurationProperty,
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          tags :: (Prelude.Maybe [Tag])}
mkLoggingConfiguration ::
  DestinationConfigurationProperty -> LoggingConfiguration
mkLoggingConfiguration destinationConfiguration
  = LoggingConfiguration
      {destinationConfiguration = destinationConfiguration,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LoggingConfiguration where
  toResourceProperties LoggingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::LoggingConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationConfiguration" JSON..= destinationConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationConfiguration" JSON..= destinationConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DestinationConfiguration" LoggingConfiguration where
  type PropertyType "DestinationConfiguration" LoggingConfiguration = DestinationConfigurationProperty
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {destinationConfiguration = newValue, ..}
instance Property "Name" LoggingConfiguration where
  type PropertyType "Name" LoggingConfiguration = Value Prelude.Text
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {name = Prelude.pure newValue, ..}
instance Property "Tags" LoggingConfiguration where
  type PropertyType "Tags" LoggingConfiguration = [Tag]
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {tags = Prelude.pure newValue, ..}