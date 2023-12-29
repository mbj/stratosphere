module Stratosphere.SageMaker.ModelPackage.BiasProperty (
        module Exports, BiasProperty(..), mkBiasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data BiasProperty
  = BiasProperty {postTrainingReport :: (Prelude.Maybe MetricsSourceProperty),
                  preTrainingReport :: (Prelude.Maybe MetricsSourceProperty),
                  report :: (Prelude.Maybe MetricsSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBiasProperty :: BiasProperty
mkBiasProperty
  = BiasProperty
      {postTrainingReport = Prelude.Nothing,
       preTrainingReport = Prelude.Nothing, report = Prelude.Nothing}
instance ToResourceProperties BiasProperty where
  toResourceProperties BiasProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.Bias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PostTrainingReport" Prelude.<$> postTrainingReport,
                            (JSON..=) "PreTrainingReport" Prelude.<$> preTrainingReport,
                            (JSON..=) "Report" Prelude.<$> report])}
instance JSON.ToJSON BiasProperty where
  toJSON BiasProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PostTrainingReport" Prelude.<$> postTrainingReport,
               (JSON..=) "PreTrainingReport" Prelude.<$> preTrainingReport,
               (JSON..=) "Report" Prelude.<$> report]))
instance Property "PostTrainingReport" BiasProperty where
  type PropertyType "PostTrainingReport" BiasProperty = MetricsSourceProperty
  set newValue BiasProperty {..}
    = BiasProperty {postTrainingReport = Prelude.pure newValue, ..}
instance Property "PreTrainingReport" BiasProperty where
  type PropertyType "PreTrainingReport" BiasProperty = MetricsSourceProperty
  set newValue BiasProperty {..}
    = BiasProperty {preTrainingReport = Prelude.pure newValue, ..}
instance Property "Report" BiasProperty where
  type PropertyType "Report" BiasProperty = MetricsSourceProperty
  set newValue BiasProperty {..}
    = BiasProperty {report = Prelude.pure newValue, ..}