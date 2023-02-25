module Stratosphere.Batch.JobDefinition (
        module Exports, JobDefinition(..), mkJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NodePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RetryStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.TimeoutProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobDefinition
  = JobDefinition {containerProperties :: (Prelude.Maybe ContainerPropertiesProperty),
                   eksProperties :: (Prelude.Maybe EksPropertiesProperty),
                   jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                   nodeProperties :: (Prelude.Maybe NodePropertiesProperty),
                   parameters :: (Prelude.Maybe JSON.Object),
                   platformCapabilities :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                   propagateTags :: (Prelude.Maybe (Value Prelude.Bool)),
                   retryStrategy :: (Prelude.Maybe RetryStrategyProperty),
                   schedulingPriority :: (Prelude.Maybe (Value Prelude.Integer)),
                   tags :: (Prelude.Maybe JSON.Object),
                   timeout :: (Prelude.Maybe TimeoutProperty),
                   type' :: (Value Prelude.Text)}
mkJobDefinition :: Value Prelude.Text -> JobDefinition
mkJobDefinition type'
  = JobDefinition
      {type' = type', containerProperties = Prelude.Nothing,
       eksProperties = Prelude.Nothing,
       jobDefinitionName = Prelude.Nothing,
       nodeProperties = Prelude.Nothing, parameters = Prelude.Nothing,
       platformCapabilities = Prelude.Nothing,
       propagateTags = Prelude.Nothing, retryStrategy = Prelude.Nothing,
       schedulingPriority = Prelude.Nothing, tags = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties JobDefinition where
  toResourceProperties JobDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerProperties" Prelude.<$> containerProperties,
                               (JSON..=) "EksProperties" Prelude.<$> eksProperties,
                               (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                               (JSON..=) "NodeProperties" Prelude.<$> nodeProperties,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "PlatformCapabilities" Prelude.<$> platformCapabilities,
                               (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                               (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy,
                               (JSON..=) "SchedulingPriority" Prelude.<$> schedulingPriority,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON JobDefinition where
  toJSON JobDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ContainerProperties" Prelude.<$> containerProperties,
                  (JSON..=) "EksProperties" Prelude.<$> eksProperties,
                  (JSON..=) "JobDefinitionName" Prelude.<$> jobDefinitionName,
                  (JSON..=) "NodeProperties" Prelude.<$> nodeProperties,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "PlatformCapabilities" Prelude.<$> platformCapabilities,
                  (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                  (JSON..=) "RetryStrategy" Prelude.<$> retryStrategy,
                  (JSON..=) "SchedulingPriority" Prelude.<$> schedulingPriority,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "ContainerProperties" JobDefinition where
  type PropertyType "ContainerProperties" JobDefinition = ContainerPropertiesProperty
  set newValue JobDefinition {..}
    = JobDefinition {containerProperties = Prelude.pure newValue, ..}
instance Property "EksProperties" JobDefinition where
  type PropertyType "EksProperties" JobDefinition = EksPropertiesProperty
  set newValue JobDefinition {..}
    = JobDefinition {eksProperties = Prelude.pure newValue, ..}
instance Property "JobDefinitionName" JobDefinition where
  type PropertyType "JobDefinitionName" JobDefinition = Value Prelude.Text
  set newValue JobDefinition {..}
    = JobDefinition {jobDefinitionName = Prelude.pure newValue, ..}
instance Property "NodeProperties" JobDefinition where
  type PropertyType "NodeProperties" JobDefinition = NodePropertiesProperty
  set newValue JobDefinition {..}
    = JobDefinition {nodeProperties = Prelude.pure newValue, ..}
instance Property "Parameters" JobDefinition where
  type PropertyType "Parameters" JobDefinition = JSON.Object
  set newValue JobDefinition {..}
    = JobDefinition {parameters = Prelude.pure newValue, ..}
instance Property "PlatformCapabilities" JobDefinition where
  type PropertyType "PlatformCapabilities" JobDefinition = ValueList (Value Prelude.Text)
  set newValue JobDefinition {..}
    = JobDefinition {platformCapabilities = Prelude.pure newValue, ..}
instance Property "PropagateTags" JobDefinition where
  type PropertyType "PropagateTags" JobDefinition = Value Prelude.Bool
  set newValue JobDefinition {..}
    = JobDefinition {propagateTags = Prelude.pure newValue, ..}
instance Property "RetryStrategy" JobDefinition where
  type PropertyType "RetryStrategy" JobDefinition = RetryStrategyProperty
  set newValue JobDefinition {..}
    = JobDefinition {retryStrategy = Prelude.pure newValue, ..}
instance Property "SchedulingPriority" JobDefinition where
  type PropertyType "SchedulingPriority" JobDefinition = Value Prelude.Integer
  set newValue JobDefinition {..}
    = JobDefinition {schedulingPriority = Prelude.pure newValue, ..}
instance Property "Tags" JobDefinition where
  type PropertyType "Tags" JobDefinition = JSON.Object
  set newValue JobDefinition {..}
    = JobDefinition {tags = Prelude.pure newValue, ..}
instance Property "Timeout" JobDefinition where
  type PropertyType "Timeout" JobDefinition = TimeoutProperty
  set newValue JobDefinition {..}
    = JobDefinition {timeout = Prelude.pure newValue, ..}
instance Property "Type" JobDefinition where
  type PropertyType "Type" JobDefinition = Value Prelude.Text
  set newValue JobDefinition {..}
    = JobDefinition {type' = newValue, ..}