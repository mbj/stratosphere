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
  = ModelDataQualityProperty {constraints :: (Prelude.Maybe MetricsSourceProperty),
                              statistics :: (Prelude.Maybe MetricsSourceProperty)}
mkModelDataQualityProperty :: ModelDataQualityProperty
mkModelDataQualityProperty
  = ModelDataQualityProperty
      {constraints = Prelude.Nothing, statistics = Prelude.Nothing}
instance ToResourceProperties ModelDataQualityProperty where
  toResourceProperties ModelDataQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelDataQuality",
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