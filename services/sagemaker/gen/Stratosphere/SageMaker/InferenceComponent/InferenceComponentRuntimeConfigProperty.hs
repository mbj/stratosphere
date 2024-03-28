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
  = InferenceComponentRuntimeConfigProperty {copyCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                             currentCopyCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                             desiredCopyCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentRuntimeConfigProperty ::
  InferenceComponentRuntimeConfigProperty
mkInferenceComponentRuntimeConfigProperty
  = InferenceComponentRuntimeConfigProperty
      {copyCount = Prelude.Nothing, currentCopyCount = Prelude.Nothing,
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