module Stratosphere.SageMaker.ModelPackage.DriftCheckModelQualityProperty (
        module Exports, DriftCheckModelQualityProperty(..),
        mkDriftCheckModelQualityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data DriftCheckModelQualityProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html>
    DriftCheckModelQualityProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html#cfn-sagemaker-modelpackage-driftcheckmodelquality-constraints>
                                    constraints :: (Prelude.Maybe MetricsSourceProperty),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html#cfn-sagemaker-modelpackage-driftcheckmodelquality-statistics>
                                    statistics :: (Prelude.Maybe MetricsSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDriftCheckModelQualityProperty :: DriftCheckModelQualityProperty
mkDriftCheckModelQualityProperty
  = DriftCheckModelQualityProperty
      {constraints = Prelude.Nothing, statistics = Prelude.Nothing}
instance ToResourceProperties DriftCheckModelQualityProperty where
  toResourceProperties DriftCheckModelQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckModelQuality",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constraints" Prelude.<$> constraints,
                            (JSON..=) "Statistics" Prelude.<$> statistics])}
instance JSON.ToJSON DriftCheckModelQualityProperty where
  toJSON DriftCheckModelQualityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constraints" Prelude.<$> constraints,
               (JSON..=) "Statistics" Prelude.<$> statistics]))
instance Property "Constraints" DriftCheckModelQualityProperty where
  type PropertyType "Constraints" DriftCheckModelQualityProperty = MetricsSourceProperty
  set newValue DriftCheckModelQualityProperty {..}
    = DriftCheckModelQualityProperty
        {constraints = Prelude.pure newValue, ..}
instance Property "Statistics" DriftCheckModelQualityProperty where
  type PropertyType "Statistics" DriftCheckModelQualityProperty = MetricsSourceProperty
  set newValue DriftCheckModelQualityProperty {..}
    = DriftCheckModelQualityProperty
        {statistics = Prelude.pure newValue, ..}