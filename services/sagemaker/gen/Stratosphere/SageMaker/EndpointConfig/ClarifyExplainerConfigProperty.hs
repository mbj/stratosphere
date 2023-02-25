module Stratosphere.SageMaker.EndpointConfig.ClarifyExplainerConfigProperty (
        module Exports, ClarifyExplainerConfigProperty(..),
        mkClarifyExplainerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyInferenceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyShapConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyExplainerConfigProperty
  = ClarifyExplainerConfigProperty {enableExplanations :: (Prelude.Maybe (Value Prelude.Text)),
                                    inferenceConfig :: (Prelude.Maybe ClarifyInferenceConfigProperty),
                                    shapConfig :: ClarifyShapConfigProperty}
mkClarifyExplainerConfigProperty ::
  ClarifyShapConfigProperty -> ClarifyExplainerConfigProperty
mkClarifyExplainerConfigProperty shapConfig
  = ClarifyExplainerConfigProperty
      {shapConfig = shapConfig, enableExplanations = Prelude.Nothing,
       inferenceConfig = Prelude.Nothing}
instance ToResourceProperties ClarifyExplainerConfigProperty where
  toResourceProperties ClarifyExplainerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyExplainerConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ShapConfig" JSON..= shapConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableExplanations" Prelude.<$> enableExplanations,
                               (JSON..=) "InferenceConfig" Prelude.<$> inferenceConfig]))}
instance JSON.ToJSON ClarifyExplainerConfigProperty where
  toJSON ClarifyExplainerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ShapConfig" JSON..= shapConfig]
              (Prelude.catMaybes
                 [(JSON..=) "EnableExplanations" Prelude.<$> enableExplanations,
                  (JSON..=) "InferenceConfig" Prelude.<$> inferenceConfig])))
instance Property "EnableExplanations" ClarifyExplainerConfigProperty where
  type PropertyType "EnableExplanations" ClarifyExplainerConfigProperty = Value Prelude.Text
  set newValue ClarifyExplainerConfigProperty {..}
    = ClarifyExplainerConfigProperty
        {enableExplanations = Prelude.pure newValue, ..}
instance Property "InferenceConfig" ClarifyExplainerConfigProperty where
  type PropertyType "InferenceConfig" ClarifyExplainerConfigProperty = ClarifyInferenceConfigProperty
  set newValue ClarifyExplainerConfigProperty {..}
    = ClarifyExplainerConfigProperty
        {inferenceConfig = Prelude.pure newValue, ..}
instance Property "ShapConfig" ClarifyExplainerConfigProperty where
  type PropertyType "ShapConfig" ClarifyExplainerConfigProperty = ClarifyShapConfigProperty
  set newValue ClarifyExplainerConfigProperty {..}
    = ClarifyExplainerConfigProperty {shapConfig = newValue, ..}