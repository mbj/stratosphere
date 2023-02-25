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
  = DriftCheckModelQualityProperty {constraints :: (Prelude.Maybe MetricsSourceProperty),
                                    statistics :: (Prelude.Maybe MetricsSourceProperty)}
mkDriftCheckModelQualityProperty :: DriftCheckModelQualityProperty
mkDriftCheckModelQualityProperty
  = DriftCheckModelQualityProperty
      {constraints = Prelude.Nothing, statistics = Prelude.Nothing}
instance ToResourceProperties DriftCheckModelQualityProperty where
  toResourceProperties DriftCheckModelQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckModelQuality",
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