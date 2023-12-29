module Stratosphere.SageMaker.ModelPackage.DriftCheckBaselinesProperty (
        module Exports, DriftCheckBaselinesProperty(..),
        mkDriftCheckBaselinesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DriftCheckBiasProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DriftCheckExplainabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DriftCheckModelDataQualityProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DriftCheckModelQualityProperty as Exports
import Stratosphere.ResourceProperties
data DriftCheckBaselinesProperty
  = DriftCheckBaselinesProperty {bias :: (Prelude.Maybe DriftCheckBiasProperty),
                                 explainability :: (Prelude.Maybe DriftCheckExplainabilityProperty),
                                 modelDataQuality :: (Prelude.Maybe DriftCheckModelDataQualityProperty),
                                 modelQuality :: (Prelude.Maybe DriftCheckModelQualityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDriftCheckBaselinesProperty :: DriftCheckBaselinesProperty
mkDriftCheckBaselinesProperty
  = DriftCheckBaselinesProperty
      {bias = Prelude.Nothing, explainability = Prelude.Nothing,
       modelDataQuality = Prelude.Nothing, modelQuality = Prelude.Nothing}
instance ToResourceProperties DriftCheckBaselinesProperty where
  toResourceProperties DriftCheckBaselinesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckBaselines",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bias" Prelude.<$> bias,
                            (JSON..=) "Explainability" Prelude.<$> explainability,
                            (JSON..=) "ModelDataQuality" Prelude.<$> modelDataQuality,
                            (JSON..=) "ModelQuality" Prelude.<$> modelQuality])}
instance JSON.ToJSON DriftCheckBaselinesProperty where
  toJSON DriftCheckBaselinesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bias" Prelude.<$> bias,
               (JSON..=) "Explainability" Prelude.<$> explainability,
               (JSON..=) "ModelDataQuality" Prelude.<$> modelDataQuality,
               (JSON..=) "ModelQuality" Prelude.<$> modelQuality]))
instance Property "Bias" DriftCheckBaselinesProperty where
  type PropertyType "Bias" DriftCheckBaselinesProperty = DriftCheckBiasProperty
  set newValue DriftCheckBaselinesProperty {..}
    = DriftCheckBaselinesProperty {bias = Prelude.pure newValue, ..}
instance Property "Explainability" DriftCheckBaselinesProperty where
  type PropertyType "Explainability" DriftCheckBaselinesProperty = DriftCheckExplainabilityProperty
  set newValue DriftCheckBaselinesProperty {..}
    = DriftCheckBaselinesProperty
        {explainability = Prelude.pure newValue, ..}
instance Property "ModelDataQuality" DriftCheckBaselinesProperty where
  type PropertyType "ModelDataQuality" DriftCheckBaselinesProperty = DriftCheckModelDataQualityProperty
  set newValue DriftCheckBaselinesProperty {..}
    = DriftCheckBaselinesProperty
        {modelDataQuality = Prelude.pure newValue, ..}
instance Property "ModelQuality" DriftCheckBaselinesProperty where
  type PropertyType "ModelQuality" DriftCheckBaselinesProperty = DriftCheckModelQualityProperty
  set newValue DriftCheckBaselinesProperty {..}
    = DriftCheckBaselinesProperty
        {modelQuality = Prelude.pure newValue, ..}