module Stratosphere.SageMaker.ModelPackage.ModelMetricsProperty (
        module Exports, ModelMetricsProperty(..), mkModelMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.BiasProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ExplainabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelDataQualityProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelQualityProperty as Exports
import Stratosphere.ResourceProperties
data ModelMetricsProperty
  = ModelMetricsProperty {bias :: (Prelude.Maybe BiasProperty),
                          explainability :: (Prelude.Maybe ExplainabilityProperty),
                          modelDataQuality :: (Prelude.Maybe ModelDataQualityProperty),
                          modelQuality :: (Prelude.Maybe ModelQualityProperty)}
mkModelMetricsProperty :: ModelMetricsProperty
mkModelMetricsProperty
  = ModelMetricsProperty
      {bias = Prelude.Nothing, explainability = Prelude.Nothing,
       modelDataQuality = Prelude.Nothing, modelQuality = Prelude.Nothing}
instance ToResourceProperties ModelMetricsProperty where
  toResourceProperties ModelMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelMetrics",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bias" Prelude.<$> bias,
                            (JSON..=) "Explainability" Prelude.<$> explainability,
                            (JSON..=) "ModelDataQuality" Prelude.<$> modelDataQuality,
                            (JSON..=) "ModelQuality" Prelude.<$> modelQuality])}
instance JSON.ToJSON ModelMetricsProperty where
  toJSON ModelMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bias" Prelude.<$> bias,
               (JSON..=) "Explainability" Prelude.<$> explainability,
               (JSON..=) "ModelDataQuality" Prelude.<$> modelDataQuality,
               (JSON..=) "ModelQuality" Prelude.<$> modelQuality]))
instance Property "Bias" ModelMetricsProperty where
  type PropertyType "Bias" ModelMetricsProperty = BiasProperty
  set newValue ModelMetricsProperty {..}
    = ModelMetricsProperty {bias = Prelude.pure newValue, ..}
instance Property "Explainability" ModelMetricsProperty where
  type PropertyType "Explainability" ModelMetricsProperty = ExplainabilityProperty
  set newValue ModelMetricsProperty {..}
    = ModelMetricsProperty {explainability = Prelude.pure newValue, ..}
instance Property "ModelDataQuality" ModelMetricsProperty where
  type PropertyType "ModelDataQuality" ModelMetricsProperty = ModelDataQualityProperty
  set newValue ModelMetricsProperty {..}
    = ModelMetricsProperty
        {modelDataQuality = Prelude.pure newValue, ..}
instance Property "ModelQuality" ModelMetricsProperty where
  type PropertyType "ModelQuality" ModelMetricsProperty = ModelQualityProperty
  set newValue ModelMetricsProperty {..}
    = ModelMetricsProperty {modelQuality = Prelude.pure newValue, ..}