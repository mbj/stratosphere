module Stratosphere.SageMaker.InferenceComponent.InferenceComponentRuntimeConfigProperty (
        InferenceComponentRuntimeConfigProperty(..),
        mkInferenceComponentRuntimeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentRuntimeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentruntimeconfig.html>
    InferenceComponentRuntimeConfigProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentruntimeconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentruntimeconfig-copycount>
                                             copyCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentruntimeconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentruntimeconfig-currentcopycount>
                                             currentCopyCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentruntimeconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentruntimeconfig-desiredcopycount>
                                             desiredCopyCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentRuntimeConfigProperty ::
  InferenceComponentRuntimeConfigProperty
mkInferenceComponentRuntimeConfigProperty
  = InferenceComponentRuntimeConfigProperty
      {haddock_workaround_ = (), copyCount = Prelude.Nothing,
       currentCopyCount = Prelude.Nothing,
       desiredCopyCount = Prelude.Nothing}
instance ToResourceProperties InferenceComponentRuntimeConfigProperty where
  toResourceProperties InferenceComponentRuntimeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentRuntimeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyCount" Prelude.<$> copyCount,
                            (JSON..=) "CurrentCopyCount" Prelude.<$> currentCopyCount,
                            (JSON..=) "DesiredCopyCount" Prelude.<$> desiredCopyCount])}
instance JSON.ToJSON InferenceComponentRuntimeConfigProperty where
  toJSON InferenceComponentRuntimeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyCount" Prelude.<$> copyCount,
               (JSON..=) "CurrentCopyCount" Prelude.<$> currentCopyCount,
               (JSON..=) "DesiredCopyCount" Prelude.<$> desiredCopyCount]))
instance Property "CopyCount" InferenceComponentRuntimeConfigProperty where
  type PropertyType "CopyCount" InferenceComponentRuntimeConfigProperty = Value Prelude.Integer
  set newValue InferenceComponentRuntimeConfigProperty {..}
    = InferenceComponentRuntimeConfigProperty
        {copyCount = Prelude.pure newValue, ..}
instance Property "CurrentCopyCount" InferenceComponentRuntimeConfigProperty where
  type PropertyType "CurrentCopyCount" InferenceComponentRuntimeConfigProperty = Value Prelude.Integer
  set newValue InferenceComponentRuntimeConfigProperty {..}
    = InferenceComponentRuntimeConfigProperty
        {currentCopyCount = Prelude.pure newValue, ..}
instance Property "DesiredCopyCount" InferenceComponentRuntimeConfigProperty where
  type PropertyType "DesiredCopyCount" InferenceComponentRuntimeConfigProperty = Value Prelude.Integer
  set newValue InferenceComponentRuntimeConfigProperty {..}
    = InferenceComponentRuntimeConfigProperty
        {desiredCopyCount = Prelude.pure newValue, ..}