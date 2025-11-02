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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-loggingconfiguration.html>
    LoggingConfiguration {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-loggingconfiguration.html#cfn-ivschat-loggingconfiguration-destinationconfiguration>
                          destinationConfiguration :: DestinationConfigurationProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-loggingconfiguration.html#cfn-ivschat-loggingconfiguration-name>
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivschat-loggingconfiguration.html#cfn-ivschat-loggingconfiguration-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfiguration ::
  DestinationConfigurationProperty -> LoggingConfiguration
mkLoggingConfiguration destinationConfiguration
  = LoggingConfiguration
      {haddock_workaround_ = (),
       destinationConfiguration = destinationConfiguration,
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