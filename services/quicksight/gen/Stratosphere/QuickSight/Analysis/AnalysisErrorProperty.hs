module Stratosphere.QuickSight.Analysis.AnalysisErrorProperty (
        AnalysisErrorProperty(..), mkAnalysisErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisErrorProperty
  = AnalysisErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                           type' :: (Prelude.Maybe (Value Prelude.Text))}
mkAnalysisErrorProperty :: AnalysisErrorProperty
mkAnalysisErrorProperty
  = AnalysisErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties AnalysisErrorProperty where
  toResourceProperties AnalysisErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisError",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON AnalysisErrorProperty where
  toJSON AnalysisErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" AnalysisErrorProperty where
  type PropertyType "Message" AnalysisErrorProperty = Value Prelude.Text
  set newValue AnalysisErrorProperty {..}
    = AnalysisErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" AnalysisErrorProperty where
  type PropertyType "Type" AnalysisErrorProperty = Value Prelude.Text
  set newValue AnalysisErrorProperty {..}
    = AnalysisErrorProperty {type' = Prelude.pure newValue, ..}