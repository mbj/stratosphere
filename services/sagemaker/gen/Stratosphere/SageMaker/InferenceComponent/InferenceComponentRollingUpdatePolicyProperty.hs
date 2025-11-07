module Stratosphere.SageMaker.InferenceComponent.InferenceComponentRollingUpdatePolicyProperty (
        module Exports, InferenceComponentRollingUpdatePolicyProperty(..),
        mkInferenceComponentRollingUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentCapacitySizeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentRollingUpdatePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html>
    InferenceComponentRollingUpdatePolicyProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-maximumbatchsize>
                                                   maximumBatchSize :: (Prelude.Maybe InferenceComponentCapacitySizeProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-maximumexecutiontimeoutinseconds>
                                                   maximumExecutionTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-rollbackmaximumbatchsize>
                                                   rollbackMaximumBatchSize :: (Prelude.Maybe InferenceComponentCapacitySizeProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-waitintervalinseconds>
                                                   waitIntervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentRollingUpdatePolicyProperty ::
  InferenceComponentRollingUpdatePolicyProperty
mkInferenceComponentRollingUpdatePolicyProperty
  = InferenceComponentRollingUpdatePolicyProperty
      {haddock_workaround_ = (), maximumBatchSize = Prelude.Nothing,
       maximumExecutionTimeoutInSeconds = Prelude.Nothing,
       rollbackMaximumBatchSize = Prelude.Nothing,
       waitIntervalInSeconds = Prelude.Nothing}
instance ToResourceProperties InferenceComponentRollingUpdatePolicyProperty where
  toResourceProperties
    InferenceComponentRollingUpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentRollingUpdatePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumBatchSize" Prelude.<$> maximumBatchSize,
                            (JSON..=) "MaximumExecutionTimeoutInSeconds"
                              Prelude.<$> maximumExecutionTimeoutInSeconds,
                            (JSON..=) "RollbackMaximumBatchSize"
                              Prelude.<$> rollbackMaximumBatchSize,
                            (JSON..=) "WaitIntervalInSeconds"
                              Prelude.<$> waitIntervalInSeconds])}
instance JSON.ToJSON InferenceComponentRollingUpdatePolicyProperty where
  toJSON InferenceComponentRollingUpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumBatchSize" Prelude.<$> maximumBatchSize,
               (JSON..=) "MaximumExecutionTimeoutInSeconds"
                 Prelude.<$> maximumExecutionTimeoutInSeconds,
               (JSON..=) "RollbackMaximumBatchSize"
                 Prelude.<$> rollbackMaximumBatchSize,
               (JSON..=) "WaitIntervalInSeconds"
                 Prelude.<$> waitIntervalInSeconds]))
instance Property "MaximumBatchSize" InferenceComponentRollingUpdatePolicyProperty where
  type PropertyType "MaximumBatchSize" InferenceComponentRollingUpdatePolicyProperty = InferenceComponentCapacitySizeProperty
  set newValue InferenceComponentRollingUpdatePolicyProperty {..}
    = InferenceComponentRollingUpdatePolicyProperty
        {maximumBatchSize = Prelude.pure newValue, ..}
instance Property "MaximumExecutionTimeoutInSeconds" InferenceComponentRollingUpdatePolicyProperty where
  type PropertyType "MaximumExecutionTimeoutInSeconds" InferenceComponentRollingUpdatePolicyProperty = Value Prelude.Integer
  set newValue InferenceComponentRollingUpdatePolicyProperty {..}
    = InferenceComponentRollingUpdatePolicyProperty
        {maximumExecutionTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "RollbackMaximumBatchSize" InferenceComponentRollingUpdatePolicyProperty where
  type PropertyType "RollbackMaximumBatchSize" InferenceComponentRollingUpdatePolicyProperty = InferenceComponentCapacitySizeProperty
  set newValue InferenceComponentRollingUpdatePolicyProperty {..}
    = InferenceComponentRollingUpdatePolicyProperty
        {rollbackMaximumBatchSize = Prelude.pure newValue, ..}
instance Property "WaitIntervalInSeconds" InferenceComponentRollingUpdatePolicyProperty where
  type PropertyType "WaitIntervalInSeconds" InferenceComponentRollingUpdatePolicyProperty = Value Prelude.Integer
  set newValue InferenceComponentRollingUpdatePolicyProperty {..}
    = InferenceComponentRollingUpdatePolicyProperty
        {waitIntervalInSeconds = Prelude.pure newValue, ..}