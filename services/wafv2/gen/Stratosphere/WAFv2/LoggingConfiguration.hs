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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-loggingconfiguration.html>
    LoggingConfiguration {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-loggingconfiguration.html#cfn-wafv2-loggingconfiguration-logdestinationconfigs>
                          logDestinationConfigs :: (ValueList Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-loggingconfiguration.html#cfn-wafv2-loggingconfiguration-loggingfilter>
                          loggingFilter :: (Prelude.Maybe LoggingFilterProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-loggingconfiguration.html#cfn-wafv2-loggingconfiguration-redactedfields>
                          redactedFields :: (Prelude.Maybe [FieldToMatchProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-loggingconfiguration.html#cfn-wafv2-loggingconfiguration-resourcearn>
                          resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfiguration ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> LoggingConfiguration
mkLoggingConfiguration logDestinationConfigs resourceArn
  = LoggingConfiguration
      {haddock_workaround_ = (),
       logDestinationConfigs = logDestinationConfigs,
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