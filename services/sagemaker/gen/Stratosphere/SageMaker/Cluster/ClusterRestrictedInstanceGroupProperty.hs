module Stratosphere.SageMaker.Cluster.ClusterRestrictedInstanceGroupProperty (
        module Exports, ClusterRestrictedInstanceGroupProperty(..),
        mkClusterRestrictedInstanceGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterInstanceStorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.EnvironmentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterRestrictedInstanceGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html>
    ClusterRestrictedInstanceGroupProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-currentcount>
                                            currentCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-environmentconfig>
                                            environmentConfig :: EnvironmentConfigProperty,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-executionrole>
                                            executionRole :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancecount>
                                            instanceCount :: (Value Prelude.Integer),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancegroupname>
                                            instanceGroupName :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancestorageconfigs>
                                            instanceStorageConfigs :: (Prelude.Maybe [ClusterInstanceStorageConfigProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancetype>
                                            instanceType :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-onstartdeephealthchecks>
                                            onStartDeepHealthChecks :: (Prelude.Maybe (ValueList Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-overridevpcconfig>
                                            overrideVpcConfig :: (Prelude.Maybe VpcConfigProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-threadspercore>
                                            threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-trainingplanarn>
                                            trainingPlanArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterRestrictedInstanceGroupProperty ::
  EnvironmentConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text
           -> Value Prelude.Text -> ClusterRestrictedInstanceGroupProperty
mkClusterRestrictedInstanceGroupProperty
  environmentConfig
  executionRole
  instanceCount
  instanceGroupName
  instanceType
  = ClusterRestrictedInstanceGroupProperty
      {haddock_workaround_ = (), environmentConfig = environmentConfig,
       executionRole = executionRole, instanceCount = instanceCount,
       instanceGroupName = instanceGroupName, instanceType = instanceType,
       currentCount = Prelude.Nothing,
       instanceStorageConfigs = Prelude.Nothing,
       onStartDeepHealthChecks = Prelude.Nothing,
       overrideVpcConfig = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing,
       trainingPlanArn = Prelude.Nothing}
instance ToResourceProperties ClusterRestrictedInstanceGroupProperty where
  toResourceProperties ClusterRestrictedInstanceGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterRestrictedInstanceGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnvironmentConfig" JSON..= environmentConfig,
                            "ExecutionRole" JSON..= executionRole,
                            "InstanceCount" JSON..= instanceCount,
                            "InstanceGroupName" JSON..= instanceGroupName,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentCount" Prelude.<$> currentCount,
                               (JSON..=) "InstanceStorageConfigs"
                                 Prelude.<$> instanceStorageConfigs,
                               (JSON..=) "OnStartDeepHealthChecks"
                                 Prelude.<$> onStartDeepHealthChecks,
                               (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore,
                               (JSON..=) "TrainingPlanArn" Prelude.<$> trainingPlanArn]))}
instance JSON.ToJSON ClusterRestrictedInstanceGroupProperty where
  toJSON ClusterRestrictedInstanceGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnvironmentConfig" JSON..= environmentConfig,
               "ExecutionRole" JSON..= executionRole,
               "InstanceCount" JSON..= instanceCount,
               "InstanceGroupName" JSON..= instanceGroupName,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentCount" Prelude.<$> currentCount,
                  (JSON..=) "InstanceStorageConfigs"
                    Prelude.<$> instanceStorageConfigs,
                  (JSON..=) "OnStartDeepHealthChecks"
                    Prelude.<$> onStartDeepHealthChecks,
                  (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                  (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore,
                  (JSON..=) "TrainingPlanArn" Prelude.<$> trainingPlanArn])))
instance Property "CurrentCount" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "CurrentCount" ClusterRestrictedInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {currentCount = Prelude.pure newValue, ..}
instance Property "EnvironmentConfig" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "EnvironmentConfig" ClusterRestrictedInstanceGroupProperty = EnvironmentConfigProperty
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {environmentConfig = newValue, ..}
instance Property "ExecutionRole" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "ExecutionRole" ClusterRestrictedInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {executionRole = newValue, ..}
instance Property "InstanceCount" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "InstanceCount" ClusterRestrictedInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {instanceCount = newValue, ..}
instance Property "InstanceGroupName" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "InstanceGroupName" ClusterRestrictedInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {instanceGroupName = newValue, ..}
instance Property "InstanceStorageConfigs" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "InstanceStorageConfigs" ClusterRestrictedInstanceGroupProperty = [ClusterInstanceStorageConfigProperty]
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {instanceStorageConfigs = Prelude.pure newValue, ..}
instance Property "InstanceType" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "InstanceType" ClusterRestrictedInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {instanceType = newValue, ..}
instance Property "OnStartDeepHealthChecks" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "OnStartDeepHealthChecks" ClusterRestrictedInstanceGroupProperty = ValueList Prelude.Text
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {onStartDeepHealthChecks = Prelude.pure newValue, ..}
instance Property "OverrideVpcConfig" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "OverrideVpcConfig" ClusterRestrictedInstanceGroupProperty = VpcConfigProperty
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {overrideVpcConfig = Prelude.pure newValue, ..}
instance Property "ThreadsPerCore" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "ThreadsPerCore" ClusterRestrictedInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {threadsPerCore = Prelude.pure newValue, ..}
instance Property "TrainingPlanArn" ClusterRestrictedInstanceGroupProperty where
  type PropertyType "TrainingPlanArn" ClusterRestrictedInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterRestrictedInstanceGroupProperty {..}
    = ClusterRestrictedInstanceGroupProperty
        {trainingPlanArn = Prelude.pure newValue, ..}