module Stratosphere.Batch.JobDefinition (
        module Exports, JobDefinition(..), mkJobDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EcsPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NodePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RetryStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.TimeoutProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html>
    JobDefinition {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-containerproperties>
                   containerProperties :: (Prelude.Maybe ContainerPropertiesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-ecsproperties>
                   ecsProperties :: (Prelude.Maybe EcsPropertiesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-eksproperties>
                   eksProperties :: (Prelude.Maybe EksPropertiesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-jobdefinitionname>
                   jobDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-nodeproperties>
                   nodeProperties :: (Prelude.Maybe NodePropertiesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-parameters>
                   parameters :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-platformcapabilities>
                   platformCapabilities :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-propagatetags>
                   propagateTags :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-retrystrategy>
                   retryStrategy :: (Prelude.Maybe RetryStrategyProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-schedulingpriority>
                   schedulingPriority :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-tags>
                   tags :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-timeout>
                   timeout :: (Prelude.Maybe TimeoutProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-type>
                   type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobDefinition :: Value Prelude.Text -> JobDefinition
mkJobDefinition type'
  = JobDefinition
      {haddock_workaround_ = (), type' = type',
       containerProperties = Prelude.Nothing,
       ecsProperties = Prelude.Nothing, eksProperties = Prelude.Nothing,
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
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerProperties" Prelude.<$> containerProperties,
                               (JSON..=) "EcsProperties" Prelude.<$> ecsProperties,
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
                  (JSON..=) "EcsProperties" Prelude.<$> ecsProperties,
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
instance Property "EcsProperties" JobDefinition where
  type PropertyType "EcsProperties" JobDefinition = EcsPropertiesProperty
  set newValue JobDefinition {..}
    = JobDefinition {ecsProperties = Prelude.pure newValue, ..}
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
  type PropertyType "PlatformCapabilities" JobDefinition = ValueList Prelude.Text
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