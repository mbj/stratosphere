module Stratosphere.SageMaker.ModelPackage.ModelQualityProperty (
        module Exports, ModelQualityProperty(..), mkModelQualityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data ModelQualityProperty
  = ModelQualityProperty {constraints :: (Prelude.Maybe MetricsSourceProperty),
                          statistics :: (Prelude.Maybe MetricsSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelQualityProperty :: ModelQualityProperty
mkModelQualityProperty
  = ModelQualityProperty
      {constraints = Prelude.Nothing, statistics = Prelude.Nothing}
instance ToResourceProperties ModelQualityProperty where
  toResourceProperties ModelQualityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelQuality",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constraints" Prelude.<$> constraints,
                            (JSON..=) "Statistics" Prelude.<$> statistics])}
instance JSON.ToJSON ModelQualityProperty where
  toJSON ModelQualityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constraints" Prelude.<$> constraints,
               (JSON..=) "Statistics" Prelude.<$> statistics]))
instance Property "Constraints" ModelQualityProperty where
  type PropertyType "Constraints" ModelQualityProperty = MetricsSourceProperty
  set newValue ModelQualityProperty {..}
    = ModelQualityProperty {constraints = Prelude.pure newValue, ..}
instance Property "Statistics" ModelQualityProperty where
  type PropertyType "Statistics" ModelQualityProperty = MetricsSourceProperty
  set newValue ModelQualityProperty {..}
    = ModelQualityProperty {statistics = Prelude.pure newValue, ..}