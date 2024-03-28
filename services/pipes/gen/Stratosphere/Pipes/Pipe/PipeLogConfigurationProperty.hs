module Stratosphere.Pipes.Pipe.PipeLogConfigurationProperty (
        module Exports, PipeLogConfigurationProperty(..),
        mkPipeLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.CloudwatchLogsLogDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.FirehoseLogDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.S3LogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeLogConfigurationProperty
  = PipeLogConfigurationProperty {cloudwatchLogsLogDestination :: (Prelude.Maybe CloudwatchLogsLogDestinationProperty),
                                  firehoseLogDestination :: (Prelude.Maybe FirehoseLogDestinationProperty),
                                  includeExecutionData :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  level :: (Prelude.Maybe (Value Prelude.Text)),
                                  s3LogDestination :: (Prelude.Maybe S3LogDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeLogConfigurationProperty :: PipeLogConfigurationProperty
mkPipeLogConfigurationProperty
  = PipeLogConfigurationProperty
      {cloudwatchLogsLogDestination = Prelude.Nothing,
       firehoseLogDestination = Prelude.Nothing,
       includeExecutionData = Prelude.Nothing, level = Prelude.Nothing,
       s3LogDestination = Prelude.Nothing}
instance ToResourceProperties PipeLogConfigurationProperty where
  toResourceProperties PipeLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeLogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudwatchLogsLogDestination"
                              Prelude.<$> cloudwatchLogsLogDestination,
                            (JSON..=) "FirehoseLogDestination"
                              Prelude.<$> firehoseLogDestination,
                            (JSON..=) "IncludeExecutionData" Prelude.<$> includeExecutionData,
                            (JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "S3LogDestination" Prelude.<$> s3LogDestination])}
instance JSON.ToJSON PipeLogConfigurationProperty where
  toJSON PipeLogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudwatchLogsLogDestination"
                 Prelude.<$> cloudwatchLogsLogDestination,
               (JSON..=) "FirehoseLogDestination"
                 Prelude.<$> firehoseLogDestination,
               (JSON..=) "IncludeExecutionData" Prelude.<$> includeExecutionData,
               (JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "S3LogDestination" Prelude.<$> s3LogDestination]))
instance Property "CloudwatchLogsLogDestination" PipeLogConfigurationProperty where
  type PropertyType "CloudwatchLogsLogDestination" PipeLogConfigurationProperty = CloudwatchLogsLogDestinationProperty
  set newValue PipeLogConfigurationProperty {..}
    = PipeLogConfigurationProperty
        {cloudwatchLogsLogDestination = Prelude.pure newValue, ..}
instance Property "FirehoseLogDestination" PipeLogConfigurationProperty where
  type PropertyType "FirehoseLogDestination" PipeLogConfigurationProperty = FirehoseLogDestinationProperty
  set newValue PipeLogConfigurationProperty {..}
    = PipeLogConfigurationProperty
        {firehoseLogDestination = Prelude.pure newValue, ..}
instance Property "IncludeExecutionData" PipeLogConfigurationProperty where
  type PropertyType "IncludeExecutionData" PipeLogConfigurationProperty = ValueList Prelude.Text
  set newValue PipeLogConfigurationProperty {..}
    = PipeLogConfigurationProperty
        {includeExecutionData = Prelude.pure newValue, ..}
instance Property "Level" PipeLogConfigurationProperty where
  type PropertyType "Level" PipeLogConfigurationProperty = Value Prelude.Text
  set newValue PipeLogConfigurationProperty {..}
    = PipeLogConfigurationProperty {level = Prelude.pure newValue, ..}
instance Property "S3LogDestination" PipeLogConfigurationProperty where
  type PropertyType "S3LogDestination" PipeLogConfigurationProperty = S3LogDestinationProperty
  set newValue PipeLogConfigurationProperty {..}
    = PipeLogConfigurationProperty
        {s3LogDestination = Prelude.pure newValue, ..}