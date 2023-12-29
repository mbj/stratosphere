module Stratosphere.CloudTrail.Trail.InsightSelectorProperty (
        InsightSelectorProperty(..), mkInsightSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightSelectorProperty
  = InsightSelectorProperty {insightType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightSelectorProperty :: InsightSelectorProperty
mkInsightSelectorProperty
  = InsightSelectorProperty {insightType = Prelude.Nothing}
instance ToResourceProperties InsightSelectorProperty where
  toResourceProperties InsightSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.InsightSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InsightType" Prelude.<$> insightType])}
instance JSON.ToJSON InsightSelectorProperty where
  toJSON InsightSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InsightType" Prelude.<$> insightType]))
instance Property "InsightType" InsightSelectorProperty where
  type PropertyType "InsightType" InsightSelectorProperty = Value Prelude.Text
  set newValue InsightSelectorProperty {}
    = InsightSelectorProperty {insightType = Prelude.pure newValue, ..}