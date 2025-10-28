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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html>
    ModelMetricsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-bias>
                          bias :: (Prelude.Maybe BiasProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-explainability>
                          explainability :: (Prelude.Maybe ExplainabilityProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-modeldataquality>
                          modelDataQuality :: (Prelude.Maybe ModelDataQualityProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-modelquality>
                          modelQuality :: (Prelude.Maybe ModelQualityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelMetricsProperty :: ModelMetricsProperty
mkModelMetricsProperty
  = ModelMetricsProperty
      {haddock_workaround_ = (), bias = Prelude.Nothing,
       explainability = Prelude.Nothing,
       modelDataQuality = Prelude.Nothing, modelQuality = Prelude.Nothing}
instance ToResourceProperties ModelMetricsProperty where
  toResourceProperties ModelMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelMetrics",
         supportsTags = Prelude.False,
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