module Stratosphere.SageMaker.ModelPackage.ExplainabilityProperty (
        module Exports, ExplainabilityProperty(..),
        mkExplainabilityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data ExplainabilityProperty
  = ExplainabilityProperty {report :: (Prelude.Maybe MetricsSourceProperty)}
mkExplainabilityProperty :: ExplainabilityProperty
mkExplainabilityProperty
  = ExplainabilityProperty {report = Prelude.Nothing}
instance ToResourceProperties ExplainabilityProperty where
  toResourceProperties ExplainabilityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.Explainability",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Report" Prelude.<$> report])}
instance JSON.ToJSON ExplainabilityProperty where
  toJSON ExplainabilityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Report" Prelude.<$> report]))
instance Property "Report" ExplainabilityProperty where
  type PropertyType "Report" ExplainabilityProperty = MetricsSourceProperty
  set newValue ExplainabilityProperty {}
    = ExplainabilityProperty {report = Prelude.pure newValue, ..}