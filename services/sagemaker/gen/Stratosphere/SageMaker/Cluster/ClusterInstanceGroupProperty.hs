module Stratosphere.SageMaker.Cluster.ClusterInstanceGroupProperty (
        module Exports, ClusterInstanceGroupProperty(..),
        mkClusterInstanceGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterInstanceStorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterLifeCycleConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterInstanceGroupProperty
  = ClusterInstanceGroupProperty {currentCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                  executionRole :: (Value Prelude.Text),
                                  instanceCount :: (Value Prelude.Integer),
                                  instanceGroupName :: (Value Prelude.Text),
                                  instanceStorageConfigs :: (Prelude.Maybe [ClusterInstanceStorageConfigProperty]),
                                  instanceType :: (Value Prelude.Text),
                                  lifeCycleConfig :: ClusterLifeCycleConfigProperty,
                                  onStartDeepHealthChecks :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  overrideVpcConfig :: (Prelude.Maybe VpcConfigProperty),
                                  threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer))}
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
      {executionRole = executionRole, instanceCount = instanceCount,
       instanceGroupName = instanceGroupName, instanceType = instanceType,
       lifeCycleConfig = lifeCycleConfig, currentCount = Prelude.Nothing,
       instanceStorageConfigs = Prelude.Nothing,
       onStartDeepHealthChecks = Prelude.Nothing,
       overrideVpcConfig = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing}
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
                               (JSON..=) "InstanceStorageConfigs"
                                 Prelude.<$> instanceStorageConfigs,
                               (JSON..=) "OnStartDeepHealthChecks"
                                 Prelude.<$> onStartDeepHealthChecks,
                               (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore]))}
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
                  (JSON..=) "InstanceStorageConfigs"
                    Prelude.<$> instanceStorageConfigs,
                  (JSON..=) "OnStartDeepHealthChecks"
                    Prelude.<$> onStartDeepHealthChecks,
                  (JSON..=) "OverrideVpcConfig" Prelude.<$> overrideVpcConfig,
                  (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore])))
instance Property "CurrentCount" ClusterInstanceGroupProperty where
  type PropertyType "CurrentCount" ClusterInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {currentCount = Prelude.pure newValue, ..}
instance Property "ExecutionRole" ClusterInstanceGroupProperty where
  type PropertyType "ExecutionRole" ClusterInstanceGroupProperty = Value Prelude.Text
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty {executionRole = newValue, ..}
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
instance Property "ThreadsPerCore" ClusterInstanceGroupProperty where
  type PropertyType "ThreadsPerCore" ClusterInstanceGroupProperty = Value Prelude.Integer
  set newValue ClusterInstanceGroupProperty {..}
    = ClusterInstanceGroupProperty
        {threadsPerCore = Prelude.pure newValue, ..}