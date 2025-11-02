module Stratosphere.SageMaker.ModelPackage.ModelDataQualityProperty (
        module Exports, ModelDataQualityProperty(..),
        mkModelDataQualityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data ModelDataQualityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html>
    ModelDataQualityProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html#cfn-sagemaker-modelpackage-modeldataquality-constraints>
                              constraints :: (Prelude.Maybe MetricsSourceProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html#cfn-sagemaker-modelpackage-modeldataquality-statistics>
                              statistics :: (Prelude.Maybe MetricsSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelDataQualityProperty :: ModelDataQualityProperty
mkModelDataQualityProperty
  = ModelDataQualityProperty
      {haddock_workaround_ = (), constraints = Prelude.Nothing,
       statistics = Prelude.Nothing}
instance ToResourceProperties ModelDataQualityProperty where
  toResourceProperties ModelDataQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelDataQuality",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constraints" Prelude.<$> constraints,
                            (JSON..=) "Statistics" Prelude.<$> statistics])}
instance JSON.ToJSON ModelDataQualityProperty where
  toJSON ModelDataQualityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constraints" Prelude.<$> constraints,
               (JSON..=) "Statistics" Prelude.<$> statistics]))
instance Property "Constraints" ModelDataQualityProperty where
  type PropertyType "Constraints" ModelDataQualityProperty = MetricsSourceProperty
  set newValue ModelDataQualityProperty {..}
    = ModelDataQualityProperty
        {constraints = Prelude.pure newValue, ..}
instance Property "Statistics" ModelDataQualityProperty where
  type PropertyType "Statistics" ModelDataQualityProperty = MetricsSourceProperty
  set newValue ModelDataQualityProperty {..}
    = ModelDataQualityProperty {statistics = Prelude.pure newValue, ..}