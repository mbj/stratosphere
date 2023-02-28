module Stratosphere.WAFv2.LoggingConfiguration (
        module Exports, LoggingConfiguration(..), mkLoggingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.LoggingFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfiguration
  = LoggingConfiguration {logDestinationConfigs :: (ValueList Prelude.Text),
                          loggingFilter :: (Prelude.Maybe LoggingFilterProperty),
                          redactedFields :: (Prelude.Maybe [FieldToMatchProperty]),
                          resourceArn :: (Value Prelude.Text)}
mkLoggingConfiguration ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> LoggingConfiguration
mkLoggingConfiguration logDestinationConfigs resourceArn
  = LoggingConfiguration
      {logDestinationConfigs = logDestinationConfigs,
       resourceArn = resourceArn, loggingFilter = Prelude.Nothing,
       redactedFields = Prelude.Nothing}
instance ToResourceProperties LoggingConfiguration where
  toResourceProperties LoggingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogDestinationConfigs" JSON..= logDestinationConfigs,
                            "ResourceArn" JSON..= resourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "LoggingFilter" Prelude.<$> loggingFilter,
                               (JSON..=) "RedactedFields" Prelude.<$> redactedFields]))}
instance JSON.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogDestinationConfigs" JSON..= logDestinationConfigs,
               "ResourceArn" JSON..= resourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "LoggingFilter" Prelude.<$> loggingFilter,
                  (JSON..=) "RedactedFields" Prelude.<$> redactedFields])))
instance Property "LogDestinationConfigs" LoggingConfiguration where
  type PropertyType "LogDestinationConfigs" LoggingConfiguration = ValueList Prelude.Text
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {logDestinationConfigs = newValue, ..}
instance Property "LoggingFilter" LoggingConfiguration where
  type PropertyType "LoggingFilter" LoggingConfiguration = LoggingFilterProperty
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {loggingFilter = Prelude.pure newValue, ..}
instance Property "RedactedFields" LoggingConfiguration where
  type PropertyType "RedactedFields" LoggingConfiguration = [FieldToMatchProperty]
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {redactedFields = Prelude.pure newValue, ..}
instance Property "ResourceArn" LoggingConfiguration where
  type PropertyType "ResourceArn" LoggingConfiguration = Value Prelude.Text
  set newValue LoggingConfiguration {..}
    = LoggingConfiguration {resourceArn = newValue, ..}