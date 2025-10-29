module Stratosphere.IVSChat.LoggingConfiguration.DestinationConfigurationProperty (
        module Exports, DestinationConfigurationProperty(..),
        mkDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVSChat.LoggingConfiguration.CloudWatchLogsDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IVSChat.LoggingConfiguration.FirehoseDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IVSChat.LoggingConfiguration.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-destinationconfiguration.html>
    DestinationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-destinationconfiguration.html#cfn-ivschat-loggingconfiguration-destinationconfiguration-cloudwatchlogs>
                                      cloudWatchLogs :: (Prelude.Maybe CloudWatchLogsDestinationConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-destinationconfiguration.html#cfn-ivschat-loggingconfiguration-destinationconfiguration-firehose>
                                      firehose :: (Prelude.Maybe FirehoseDestinationConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivschat-loggingconfiguration-destinationconfiguration.html#cfn-ivschat-loggingconfiguration-destinationconfiguration-s3>
                                      s3 :: (Prelude.Maybe S3DestinationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigurationProperty ::
  DestinationConfigurationProperty
mkDestinationConfigurationProperty
  = DestinationConfigurationProperty
      {cloudWatchLogs = Prelude.Nothing, firehose = Prelude.Nothing,
       s3 = Prelude.Nothing}
instance ToResourceProperties DestinationConfigurationProperty where
  toResourceProperties DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::LoggingConfiguration.DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON DestinationConfigurationProperty where
  toJSON DestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "CloudWatchLogs" DestinationConfigurationProperty where
  type PropertyType "CloudWatchLogs" DestinationConfigurationProperty = CloudWatchLogsDestinationConfigurationProperty
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty
        {cloudWatchLogs = Prelude.pure newValue, ..}
instance Property "Firehose" DestinationConfigurationProperty where
  type PropertyType "Firehose" DestinationConfigurationProperty = FirehoseDestinationConfigurationProperty
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty
        {firehose = Prelude.pure newValue, ..}
instance Property "S3" DestinationConfigurationProperty where
  type PropertyType "S3" DestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty {s3 = Prelude.pure newValue, ..}