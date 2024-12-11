module Stratosphere.SageMaker.InferenceComponent (
        module Exports, InferenceComponent(..), mkInferenceComponent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentRuntimeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InferenceComponent
  = InferenceComponent {endpointArn :: (Prelude.Maybe (Value Prelude.Text)),
                        endpointName :: (Value Prelude.Text),
                        inferenceComponentName :: (Prelude.Maybe (Value Prelude.Text)),
                        runtimeConfig :: (Prelude.Maybe InferenceComponentRuntimeConfigProperty),
                        specification :: InferenceComponentSpecificationProperty,
                        tags :: (Prelude.Maybe [Tag]),
                        variantName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponent ::
  Value Prelude.Text
  -> InferenceComponentSpecificationProperty -> InferenceComponent
mkInferenceComponent endpointName specification
  = InferenceComponent
      {endpointName = endpointName, specification = specification,
       endpointArn = Prelude.Nothing,
       inferenceComponentName = Prelude.Nothing,
       runtimeConfig = Prelude.Nothing, tags = Prelude.Nothing,
       variantName = Prelude.Nothing}
instance ToResourceProperties InferenceComponent where
  toResourceProperties InferenceComponent {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName,
                            "Specification" JSON..= specification]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointArn" Prelude.<$> endpointArn,
                               (JSON..=) "InferenceComponentName"
                                 Prelude.<$> inferenceComponentName,
                               (JSON..=) "RuntimeConfig" Prelude.<$> runtimeConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VariantName" Prelude.<$> variantName]))}
instance JSON.ToJSON InferenceComponent where
  toJSON InferenceComponent {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName,
               "Specification" JSON..= specification]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointArn" Prelude.<$> endpointArn,
                  (JSON..=) "InferenceComponentName"
                    Prelude.<$> inferenceComponentName,
                  (JSON..=) "RuntimeConfig" Prelude.<$> runtimeConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VariantName" Prelude.<$> variantName])))
instance Property "EndpointArn" InferenceComponent where
  type PropertyType "EndpointArn" InferenceComponent = Value Prelude.Text
  set newValue InferenceComponent {..}
    = InferenceComponent {endpointArn = Prelude.pure newValue, ..}
instance Property "EndpointName" InferenceComponent where
  type PropertyType "EndpointName" InferenceComponent = Value Prelude.Text
  set newValue InferenceComponent {..}
    = InferenceComponent {endpointName = newValue, ..}
instance Property "InferenceComponentName" InferenceComponent where
  type PropertyType "InferenceComponentName" InferenceComponent = Value Prelude.Text
  set newValue InferenceComponent {..}
    = InferenceComponent
        {inferenceComponentName = Prelude.pure newValue, ..}
instance Property "RuntimeConfig" InferenceComponent where
  type PropertyType "RuntimeConfig" InferenceComponent = InferenceComponentRuntimeConfigProperty
  set newValue InferenceComponent {..}
    = InferenceComponent {runtimeConfig = Prelude.pure newValue, ..}
instance Property "Specification" InferenceComponent where
  type PropertyType "Specification" InferenceComponent = InferenceComponentSpecificationProperty
  set newValue InferenceComponent {..}
    = InferenceComponent {specification = newValue, ..}
instance Property "Tags" InferenceComponent where
  type PropertyType "Tags" InferenceComponent = [Tag]
  set newValue InferenceComponent {..}
    = InferenceComponent {tags = Prelude.pure newValue, ..}
instance Property "VariantName" InferenceComponent where
  type PropertyType "VariantName" InferenceComponent = Value Prelude.Text
  set newValue InferenceComponent {..}
    = InferenceComponent {variantName = Prelude.pure newValue, ..}