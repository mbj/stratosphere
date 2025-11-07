module Stratosphere.SageMaker.Cluster.ClusterInstanceGroupProperty (
        module Exports, ClusterInstanceGroupProperty(..),
        mkClusterInstanceGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterInstanceStorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterLifeCycleConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ScheduledUpdateConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterInstanceGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html>
    ClusterInstanceGroupProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-currentcount>
                                  currentCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-executionrole>
                                  executionRole :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-imageid>
                                  imageId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancecount>
                                  instanceCount :: (Value Prelude.Integer),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancegroupname>
                                  instanceGroupName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancestorageconfigs>
                                  instanceStorageConfigs :: (Prelude.Maybe [ClusterInstanceStorageConfigProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancetype>
                                  instanceType :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-lifecycleconfig>
                                  lifeCycleConfig :: ClusterLifeCycleConfigProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-onstartdeephealthchecks>
                                  onStartDeepHealthChecks :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-overridevpcconfig>
                                  overrideVpcConfig :: (Prelude.Maybe VpcConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-scheduledupdateconfig>
                                  scheduledUpdateConfig :: (Prelude.Maybe ScheduledUpdateConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-threadspercore>
                                  threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-trainingplanarn>
                                  trainingPlanArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterInstanceGroupProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> ClusterLifeCycleConfigProperty -> ClusterInstanceGroupProperty
mkClusterInstanceGroupProperty
  executionRole
  instanceCount
  instanceGroupName
  instanceType
  lifeCycleConfig
  = ClusterInstanceGroupProperty
      {haddock_workaround_ = (), executionRole = executionRole,
       instanceCount = instanceCount,
       instanceGroupName = instanceGroupName, instanceType = instanceType,
       lifeCycleConfig = lifeCycleConfig, currentCount = Prelude.Nothing,
       imageId = Prelude.Nothing,
       instanceStorageConfigs = Prelude.Nothing,
       onStartDeepHealthChecks = Prelude.Nothing,
       overrideVpcConfig = Prelude.Nothing,
       scheduledUpdateConfig = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing,
       trainingPlanArn = Prelude.Nothing}
instance ToResourceProperties ClusterInstanceGroupProperty where
  toResourceProperties ClusterInstanceGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterInstanceGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole,
                            "InstanceCount" JSON..= instanceCount,
                            "InstanceGroupName" JSON..= instanceGroupName,
                            "InstanceType" JSON..= instanceType,
                            "LifeCycleConfig" JSON..= lifeCycleConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentCount" Prelude.<$> currentCount,
                               (JSON..=) "ImageId" Prelude.<$> imageId,
                               (JSON..=) "InstanceStorageConfigs"
                                 Prelude.<$> instanceStorageConfigs,
                               (JSON..=) "OnStartDeepHealthChecks"
                                 Prelude.<$> onStartDeepHealthChecks,
                               (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                               (JSON..=) "ScheduledUpdateConfig"
                                 Prelude.<$> scheduledUpdateConfig,
                               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore,
                               (JSON..=) "TrainingPlanArn" Prelude.<$> trainingPlanArn]))}
instance JSON.ToJSON ClusterInstanceGroupProperty where
  toJSON ClusterInstanceGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole,
               "InstanceCount" JSON..= instanceCount,
               "InstanceGroupName" JSON..= instanceGroupName,
               "InstanceType" JSON..= instanceType,
               "LifeCycleConfig" JSON..= lifeCycleConfig]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentCount" Prelude.<$> currentCount,
                  (JSON..=) "ImageId" Prelude.<$> imageId,
                  (JSON..=) "InstanceStorageConfigs"
                    Prelude.<$> instanceStorageConfigs,
                  (JSON..=) "OnStartDeepHealthChecks"
                    Prelude.<$> onStartDeepHealthChecks,
                  (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                  (JSON..=) "ScheduledUpdateConfig"
                    Prelude.<$> scheduledUpdateConfig,
                  (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore,
                  (JSON..=) "TrainingPlanArn" Prelude.<$> trainingPlanArn])))
instance Property "CurrentCount" ClusterInstanceGroupProperty where
  type PropertyType "CurrentCount" ClusterInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {currentCount = Prelude.pure newValue, ..}
instance Property "ExecutionRole" ClusterInstanceGroupProperty where
  type PropertyType "ExecutionRole" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {executionRole = newValue, ..}
instance Property "ImageId" ClusterInstanceGroupProperty where
  type PropertyType "ImageId" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {imageId = Prelude.pure newValue, ..}
instance Property "InstanceCount" ClusterInstanceGroupProperty where
  type PropertyType "InstanceCount" ClusterInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {instanceCount = newValue, ..}
instance Property "InstanceGroupName" ClusterInstanceGroupProperty where
  type PropertyType "InstanceGroupName" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {instanceGroupName = newValue, ..}
instance Property "InstanceStorageConfigs" ClusterInstanceGroupProperty where
  type PropertyType "InstanceStorageConfigs" ClusterInstanceGroupProperty = [ClusterInstanceStorageConfigProperty]
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {instanceStorageConfigs = Prelude.pure newValue, ..}
instance Property "InstanceType" ClusterInstanceGroupProperty where
  type PropertyType "InstanceType" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {instanceType = newValue, ..}
instance Property "LifeCycleConfig" ClusterInstanceGroupProperty where
  type PropertyType "LifeCycleConfig" ClusterInstanceGroupProperty = ClusterLifeCycleConfigProperty
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {lifeCycleConfig = newValue, ..}
instance Property "OnStartDeepHealthChecks" ClusterInstanceGroupProperty where
  type PropertyType "OnStartDeepHealthChecks" ClusterInstanceGroupProperty = ValueList Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {onStartDeepHealthChecks = Prelude.pure newValue, ..}
instance Property "OverrideVpcConfig" ClusterInstanceGroupProperty where
  type PropertyType "OverrideVpcConfig" ClusterInstanceGroupProperty = VpcConfigProperty
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {overrideVpcConfig = Prelude.pure newValue, ..}
instance Property "ScheduledUpdateConfig" ClusterInstanceGroupProperty where
  type PropertyType "ScheduledUpdateConfig" ClusterInstanceGroupProperty = ScheduledUpdateConfigProperty
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {scheduledUpdateConfig = Prelude.pure newValue, ..}
instance Property "ThreadsPerCore" ClusterInstanceGroupProperty where
  type PropertyType "ThreadsPerCore" ClusterInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {threadsPerCore = Prelude.pure newValue, ..}
instance Property "TrainingPlanArn" ClusterInstanceGroupProperty where
  type PropertyType "TrainingPlanArn" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {trainingPlanArn = Prelude.pure newValue, ..}