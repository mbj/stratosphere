module Stratosphere.QuickSight.Analysis.AnalysisErrorProperty (
        module Exports, AnalysisErrorProperty(..), mkAnalysisErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.EntityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisErrorProperty
  = AnalysisErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                           type' :: (Prelude.Maybe (Value Prelude.Text)),
                           violatedEntities :: (Prelude.Maybe [EntityProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisErrorProperty :: AnalysisErrorProperty
mkAnalysisErrorProperty
  = AnalysisErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing,
       violatedEntities = Prelude.Nothing}
instance ToResourceProperties AnalysisErrorProperty where
  toResourceProperties AnalysisErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities])}
instance JSON.ToJSON AnalysisErrorProperty where
  toJSON AnalysisErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities]))
instance Property "Message" AnalysisErrorProperty where
  type PropertyType "Message" AnalysisErrorProperty = Value Prelude.Text
  set newValue AnalysisErrorProperty {..}
    = AnalysisErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" AnalysisErrorProperty where
  type PropertyType "Type" AnalysisErrorProperty = Value Prelude.Text
  set newValue AnalysisErrorProperty {..}
    = AnalysisErrorProperty {type' = Prelude.pure newValue, ..}
instance Property "ViolatedEntities" AnalysisErrorProperty where
  type PropertyType "ViolatedEntities" AnalysisErrorProperty = [EntityProperty]
  set newValue AnalysisErrorProperty {..}
    = AnalysisErrorProperty
        {violatedEntities = Prelude.pure newValue, ..}