module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty (
        AnalysisComponentProperty(..), mkAnalysisComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisComponentProperty
  = AnalysisComponentProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                               id :: (Prelude.Maybe (Value Prelude.Text))}
mkAnalysisComponentProperty :: AnalysisComponentProperty
mkAnalysisComponentProperty
  = AnalysisComponentProperty
      {arn = Prelude.Nothing, id = Prelude.Nothing}
instance ToResourceProperties AnalysisComponentProperty where
  toResourceProperties AnalysisComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisComponent",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn, (JSON..=) "Id" Prelude.<$> id])}
instance JSON.ToJSON AnalysisComponentProperty where
  toJSON AnalysisComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn, (JSON..=) "Id" Prelude.<$> id]))
instance Property "Arn" AnalysisComponentProperty where
  type PropertyType "Arn" AnalysisComponentProperty = Value Prelude.Text
  set newValue AnalysisComponentProperty {..}
    = AnalysisComponentProperty {arn = Prelude.pure newValue, ..}
instance Property "Id" AnalysisComponentProperty where
  type PropertyType "Id" AnalysisComponentProperty = Value Prelude.Text
  set newValue AnalysisComponentProperty {..}
    = AnalysisComponentProperty {id = Prelude.pure newValue, ..}