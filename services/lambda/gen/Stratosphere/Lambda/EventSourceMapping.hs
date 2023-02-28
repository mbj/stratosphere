module Stratosphere.Lambda.EventSourceMapping (
        module Exports, EventSourceMapping(..), mkEventSourceMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.AmazonManagedKafkaEventSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.DestinationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.FilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.ScalingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SelfManagedEventSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SourceAccessConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventSourceMapping
  = EventSourceMapping {amazonManagedKafkaEventSourceConfig :: (Prelude.Maybe AmazonManagedKafkaEventSourceConfigProperty),
                        batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        bisectBatchOnFunctionError :: (Prelude.Maybe (Value Prelude.Bool)),
                        destinationConfig :: (Prelude.Maybe DestinationConfigProperty),
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        eventSourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                        filterCriteria :: (Prelude.Maybe FilterCriteriaProperty),
                        functionName :: (Value Prelude.Text),
                        functionResponseTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                        maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        maximumRecordAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                        parallelizationFactor :: (Prelude.Maybe (Value Prelude.Integer)),
                        queues :: (Prelude.Maybe (ValueList Prelude.Text)),
                        scalingConfig :: (Prelude.Maybe ScalingConfigProperty),
                        selfManagedEventSource :: (Prelude.Maybe SelfManagedEventSourceProperty),
                        selfManagedKafkaEventSourceConfig :: (Prelude.Maybe SelfManagedKafkaEventSourceConfigProperty),
                        sourceAccessConfigurations :: (Prelude.Maybe [SourceAccessConfigurationProperty]),
                        startingPosition :: (Prelude.Maybe (Value Prelude.Text)),
                        startingPositionTimestamp :: (Prelude.Maybe (Value Prelude.Double)),
                        topics :: (Prelude.Maybe (ValueList Prelude.Text)),
                        tumblingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkEventSourceMapping :: Value Prelude.Text -> EventSourceMapping
mkEventSourceMapping functionName
  = EventSourceMapping
      {functionName = functionName,
       amazonManagedKafkaEventSourceConfig = Prelude.Nothing,
       batchSize = Prelude.Nothing,
       bisectBatchOnFunctionError = Prelude.Nothing,
       destinationConfig = Prelude.Nothing, enabled = Prelude.Nothing,
       eventSourceArn = Prelude.Nothing, filterCriteria = Prelude.Nothing,
       functionResponseTypes = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       maximumRecordAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing,
       parallelizationFactor = Prelude.Nothing, queues = Prelude.Nothing,
       scalingConfig = Prelude.Nothing,
       selfManagedEventSource = Prelude.Nothing,
       selfManagedKafkaEventSourceConfig = Prelude.Nothing,
       sourceAccessConfigurations = Prelude.Nothing,
       startingPosition = Prelude.Nothing,
       startingPositionTimestamp = Prelude.Nothing,
       topics = Prelude.Nothing,
       tumblingWindowInSeconds = Prelude.Nothing}
instance ToResourceProperties EventSourceMapping where
  toResourceProperties EventSourceMapping {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName]
                           (Prelude.catMaybes
                              [(JSON..=) "AmazonManagedKafkaEventSourceConfig"
                                 Prelude.<$> amazonManagedKafkaEventSourceConfig,
                               (JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "BisectBatchOnFunctionError"
                                 Prelude.<$> bisectBatchOnFunctionError,
                               (JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventSourceArn" Prelude.<$> eventSourceArn,
                               (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
                               (JSON..=) "FunctionResponseTypes"
                                 Prelude.<$> functionResponseTypes,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "MaximumRecordAgeInSeconds"
                                 Prelude.<$> maximumRecordAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                               (JSON..=) "ParallelizationFactor"
                                 Prelude.<$> parallelizationFactor,
                               (JSON..=) "Queues" Prelude.<$> queues,
                               (JSON..=) "ScalingConfig" Prelude.<$> scalingConfig,
                               (JSON..=) "SelfManagedEventSource"
                                 Prelude.<$> selfManagedEventSource,
                               (JSON..=) "SelfManagedKafkaEventSourceConfig"
                                 Prelude.<$> selfManagedKafkaEventSourceConfig,
                               (JSON..=) "SourceAccessConfigurations"
                                 Prelude.<$> sourceAccessConfigurations,
                               (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                               (JSON..=) "StartingPositionTimestamp"
                                 Prelude.<$> startingPositionTimestamp,
                               (JSON..=) "Topics" Prelude.<$> topics,
                               (JSON..=) "TumblingWindowInSeconds"
                                 Prelude.<$> tumblingWindowInSeconds]))}
instance JSON.ToJSON EventSourceMapping where
  toJSON EventSourceMapping {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName]
              (Prelude.catMaybes
                 [(JSON..=) "AmazonManagedKafkaEventSourceConfig"
                    Prelude.<$> amazonManagedKafkaEventSourceConfig,
                  (JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "BisectBatchOnFunctionError"
                    Prelude.<$> bisectBatchOnFunctionError,
                  (JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "EventSourceArn" Prelude.<$> eventSourceArn,
                  (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
                  (JSON..=) "FunctionResponseTypes"
                    Prelude.<$> functionResponseTypes,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "MaximumRecordAgeInSeconds"
                    Prelude.<$> maximumRecordAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                  (JSON..=) "ParallelizationFactor"
                    Prelude.<$> parallelizationFactor,
                  (JSON..=) "Queues" Prelude.<$> queues,
                  (JSON..=) "ScalingConfig" Prelude.<$> scalingConfig,
                  (JSON..=) "SelfManagedEventSource"
                    Prelude.<$> selfManagedEventSource,
                  (JSON..=) "SelfManagedKafkaEventSourceConfig"
                    Prelude.<$> selfManagedKafkaEventSourceConfig,
                  (JSON..=) "SourceAccessConfigurations"
                    Prelude.<$> sourceAccessConfigurations,
                  (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                  (JSON..=) "StartingPositionTimestamp"
                    Prelude.<$> startingPositionTimestamp,
                  (JSON..=) "Topics" Prelude.<$> topics,
                  (JSON..=) "TumblingWindowInSeconds"
                    Prelude.<$> tumblingWindowInSeconds])))
instance Property "AmazonManagedKafkaEventSourceConfig" EventSourceMapping where
  type PropertyType "AmazonManagedKafkaEventSourceConfig" EventSourceMapping = AmazonManagedKafkaEventSourceConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {amazonManagedKafkaEventSourceConfig = Prelude.pure newValue, ..}
instance Property "BatchSize" EventSourceMapping where
  type PropertyType "BatchSize" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping {batchSize = Prelude.pure newValue, ..}
instance Property "BisectBatchOnFunctionError" EventSourceMapping where
  type PropertyType "BisectBatchOnFunctionError" EventSourceMapping = Value Prelude.Bool
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {bisectBatchOnFunctionError = Prelude.pure newValue, ..}
instance Property "DestinationConfig" EventSourceMapping where
  type PropertyType "DestinationConfig" EventSourceMapping = DestinationConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {destinationConfig = Prelude.pure newValue, ..}
instance Property "Enabled" EventSourceMapping where
  type PropertyType "Enabled" EventSourceMapping = Value Prelude.Bool
  set newValue EventSourceMapping {..}
    = EventSourceMapping {enabled = Prelude.pure newValue, ..}
instance Property "EventSourceArn" EventSourceMapping where
  type PropertyType "EventSourceArn" EventSourceMapping = Value Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {eventSourceArn = Prelude.pure newValue, ..}
instance Property "FilterCriteria" EventSourceMapping where
  type PropertyType "FilterCriteria" EventSourceMapping = FilterCriteriaProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping {filterCriteria = Prelude.pure newValue, ..}
instance Property "FunctionName" EventSourceMapping where
  type PropertyType "FunctionName" EventSourceMapping = Value Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {functionName = newValue, ..}
instance Property "FunctionResponseTypes" EventSourceMapping where
  type PropertyType "FunctionResponseTypes" EventSourceMapping = ValueList Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {functionResponseTypes = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" EventSourceMapping where
  type PropertyType "MaximumBatchingWindowInSeconds" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRecordAgeInSeconds" EventSourceMapping where
  type PropertyType "MaximumRecordAgeInSeconds" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {maximumRecordAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" EventSourceMapping where
  type PropertyType "MaximumRetryAttempts" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {maximumRetryAttempts = Prelude.pure newValue, ..}
instance Property "ParallelizationFactor" EventSourceMapping where
  type PropertyType "ParallelizationFactor" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {parallelizationFactor = Prelude.pure newValue, ..}
instance Property "Queues" EventSourceMapping where
  type PropertyType "Queues" EventSourceMapping = ValueList Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {queues = Prelude.pure newValue, ..}
instance Property "ScalingConfig" EventSourceMapping where
  type PropertyType "ScalingConfig" EventSourceMapping = ScalingConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping {scalingConfig = Prelude.pure newValue, ..}
instance Property "SelfManagedEventSource" EventSourceMapping where
  type PropertyType "SelfManagedEventSource" EventSourceMapping = SelfManagedEventSourceProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {selfManagedEventSource = Prelude.pure newValue, ..}
instance Property "SelfManagedKafkaEventSourceConfig" EventSourceMapping where
  type PropertyType "SelfManagedKafkaEventSourceConfig" EventSourceMapping = SelfManagedKafkaEventSourceConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {selfManagedKafkaEventSourceConfig = Prelude.pure newValue, ..}
instance Property "SourceAccessConfigurations" EventSourceMapping where
  type PropertyType "SourceAccessConfigurations" EventSourceMapping = [SourceAccessConfigurationProperty]
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {sourceAccessConfigurations = Prelude.pure newValue, ..}
instance Property "StartingPosition" EventSourceMapping where
  type PropertyType "StartingPosition" EventSourceMapping = Value Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {startingPosition = Prelude.pure newValue, ..}
instance Property "StartingPositionTimestamp" EventSourceMapping where
  type PropertyType "StartingPositionTimestamp" EventSourceMapping = Value Prelude.Double
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {startingPositionTimestamp = Prelude.pure newValue, ..}
instance Property "Topics" EventSourceMapping where
  type PropertyType "Topics" EventSourceMapping = ValueList Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {topics = Prelude.pure newValue, ..}
instance Property "TumblingWindowInSeconds" EventSourceMapping where
  type PropertyType "TumblingWindowInSeconds" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {tumblingWindowInSeconds = Prelude.pure newValue, ..}