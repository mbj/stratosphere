module Stratosphere.Lambda.EventSourceMapping (
        module Exports, EventSourceMapping(..), mkEventSourceMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.AmazonManagedKafkaEventSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.DestinationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.DocumentDBEventSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.FilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.MetricsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.ProvisionedPollerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.ScalingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SelfManagedEventSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SourceAccessConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventSourceMapping
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html>
    EventSourceMapping {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig>
                        amazonManagedKafkaEventSourceConfig :: (Prelude.Maybe AmazonManagedKafkaEventSourceConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize>
                        batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-bisectbatchonfunctionerror>
                        bisectBatchOnFunctionError :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-destinationconfig>
                        destinationConfig :: (Prelude.Maybe DestinationConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-documentdbeventsourceconfig>
                        documentDBEventSourceConfig :: (Prelude.Maybe DocumentDBEventSourceConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled>
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn>
                        eventSourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-filtercriteria>
                        filterCriteria :: (Prelude.Maybe FilterCriteriaProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname>
                        functionName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionresponsetypes>
                        functionResponseTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-kmskeyarn>
                        kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumbatchingwindowinseconds>
                        maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumrecordageinseconds>
                        maximumRecordAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumretryattempts>
                        maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-metricsconfig>
                        metricsConfig :: (Prelude.Maybe MetricsConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-parallelizationfactor>
                        parallelizationFactor :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-provisionedpollerconfig>
                        provisionedPollerConfig :: (Prelude.Maybe ProvisionedPollerConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-queues>
                        queues :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-scalingconfig>
                        scalingConfig :: (Prelude.Maybe ScalingConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-selfmanagedeventsource>
                        selfManagedEventSource :: (Prelude.Maybe SelfManagedEventSourceProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig>
                        selfManagedKafkaEventSourceConfig :: (Prelude.Maybe SelfManagedKafkaEventSourceConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-sourceaccessconfigurations>
                        sourceAccessConfigurations :: (Prelude.Maybe [SourceAccessConfigurationProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition>
                        startingPosition :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingpositiontimestamp>
                        startingPositionTimestamp :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-tags>
                        tags :: (Prelude.Maybe [Tag]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-topics>
                        topics :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-tumblingwindowinseconds>
                        tumblingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSourceMapping :: Value Prelude.Text -> EventSourceMapping
mkEventSourceMapping functionName
  = EventSourceMapping
      {haddock_workaround_ = (), functionName = functionName,
       amazonManagedKafkaEventSourceConfig = Prelude.Nothing,
       batchSize = Prelude.Nothing,
       bisectBatchOnFunctionError = Prelude.Nothing,
       destinationConfig = Prelude.Nothing,
       documentDBEventSourceConfig = Prelude.Nothing,
       enabled = Prelude.Nothing, eventSourceArn = Prelude.Nothing,
       filterCriteria = Prelude.Nothing,
       functionResponseTypes = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       maximumRecordAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing,
       metricsConfig = Prelude.Nothing,
       parallelizationFactor = Prelude.Nothing,
       provisionedPollerConfig = Prelude.Nothing,
       queues = Prelude.Nothing, scalingConfig = Prelude.Nothing,
       selfManagedEventSource = Prelude.Nothing,
       selfManagedKafkaEventSourceConfig = Prelude.Nothing,
       sourceAccessConfigurations = Prelude.Nothing,
       startingPosition = Prelude.Nothing,
       startingPositionTimestamp = Prelude.Nothing,
       tags = Prelude.Nothing, topics = Prelude.Nothing,
       tumblingWindowInSeconds = Prelude.Nothing}
instance ToResourceProperties EventSourceMapping where
  toResourceProperties EventSourceMapping {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping",
         supportsTags = Prelude.True,
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
                               (JSON..=) "DocumentDBEventSourceConfig"
                                 Prelude.<$> documentDBEventSourceConfig,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventSourceArn" Prelude.<$> eventSourceArn,
                               (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
                               (JSON..=) "FunctionResponseTypes"
                                 Prelude.<$> functionResponseTypes,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "MaximumRecordAgeInSeconds"
                                 Prelude.<$> maximumRecordAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                               (JSON..=) "MetricsConfig" Prelude.<$> metricsConfig,
                               (JSON..=) "ParallelizationFactor"
                                 Prelude.<$> parallelizationFactor,
                               (JSON..=) "ProvisionedPollerConfig"
                                 Prelude.<$> provisionedPollerConfig,
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
                               (JSON..=) "Tags" Prelude.<$> tags,
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
                  (JSON..=) "DocumentDBEventSourceConfig"
                    Prelude.<$> documentDBEventSourceConfig,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "EventSourceArn" Prelude.<$> eventSourceArn,
                  (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
                  (JSON..=) "FunctionResponseTypes"
                    Prelude.<$> functionResponseTypes,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "MaximumRecordAgeInSeconds"
                    Prelude.<$> maximumRecordAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                  (JSON..=) "MetricsConfig" Prelude.<$> metricsConfig,
                  (JSON..=) "ParallelizationFactor"
                    Prelude.<$> parallelizationFactor,
                  (JSON..=) "ProvisionedPollerConfig"
                    Prelude.<$> provisionedPollerConfig,
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
                  (JSON..=) "Tags" Prelude.<$> tags,
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
instance Property "DocumentDBEventSourceConfig" EventSourceMapping where
  type PropertyType "DocumentDBEventSourceConfig" EventSourceMapping = DocumentDBEventSourceConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {documentDBEventSourceConfig = Prelude.pure newValue, ..}
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
instance Property "KmsKeyArn" EventSourceMapping where
  type PropertyType "KmsKeyArn" EventSourceMapping = Value Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {kmsKeyArn = Prelude.pure newValue, ..}
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
instance Property "MetricsConfig" EventSourceMapping where
  type PropertyType "MetricsConfig" EventSourceMapping = MetricsConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping {metricsConfig = Prelude.pure newValue, ..}
instance Property "ParallelizationFactor" EventSourceMapping where
  type PropertyType "ParallelizationFactor" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {parallelizationFactor = Prelude.pure newValue, ..}
instance Property "ProvisionedPollerConfig" EventSourceMapping where
  type PropertyType "ProvisionedPollerConfig" EventSourceMapping = ProvisionedPollerConfigProperty
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {provisionedPollerConfig = Prelude.pure newValue, ..}
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
instance Property "Tags" EventSourceMapping where
  type PropertyType "Tags" EventSourceMapping = [Tag]
  set newValue EventSourceMapping {..}
    = EventSourceMapping {tags = Prelude.pure newValue, ..}
instance Property "Topics" EventSourceMapping where
  type PropertyType "Topics" EventSourceMapping = ValueList Prelude.Text
  set newValue EventSourceMapping {..}
    = EventSourceMapping {topics = Prelude.pure newValue, ..}
instance Property "TumblingWindowInSeconds" EventSourceMapping where
  type PropertyType "TumblingWindowInSeconds" EventSourceMapping = Value Prelude.Integer
  set newValue EventSourceMapping {..}
    = EventSourceMapping
        {tumblingWindowInSeconds = Prelude.pure newValue, ..}