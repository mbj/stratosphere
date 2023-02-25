module Stratosphere.SageMaker.ModelPackage.DriftCheckModelDataQualityProperty (
        module Exports, DriftCheckModelDataQualityProperty(..),
        mkDriftCheckModelDataQualityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data DriftCheckModelDataQualityProperty
  = DriftCheckModelDataQualityProperty {constraints :: (Prelude.Maybe MetricsSourceProperty),
                                        statistics :: (Prelude.Maybe MetricsSourceProperty)}
mkDriftCheckModelDataQualityProperty ::
  DriftCheckModelDataQualityProperty
mkDriftCheckModelDataQualityProperty
  = DriftCheckModelDataQualityProperty
      {constraints = Prelude.Nothing, statistics = Prelude.Nothing}
instance ToResourceProperties DriftCheckModelDataQualityProperty where
  toResourceProperties DriftCheckModelDataQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckModelDataQuality",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constraints" Prelude.<$> constraints,
                            (JSON..=) "Statistics" Prelude.<$> statistics])}
instance JSON.ToJSON DriftCheckModelDataQualityProperty where
  toJSON DriftCheckModelDataQualityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constraints" Prelude.<$> constraints,
               (JSON..=) "Statistics" Prelude.<$> statistics]))
instance Property "Constraints" DriftCheckModelDataQualityProperty where
  type PropertyType "Constraints" DriftCheckModelDataQualityProperty = MetricsSourceProperty
  set newValue DriftCheckModelDataQualityProperty {..}
    = DriftCheckModelDataQualityProperty
        {constraints = Prelude.pure newValue, ..}
instance Property "Statistics" DriftCheckModelDataQualityProperty where
  type PropertyType "Statistics" DriftCheckModelDataQualityProperty = MetricsSourceProperty
  set newValue DriftCheckModelDataQualityProperty {..}
    = DriftCheckModelDataQualityProperty
        {statistics = Prelude.pure newValue, ..}