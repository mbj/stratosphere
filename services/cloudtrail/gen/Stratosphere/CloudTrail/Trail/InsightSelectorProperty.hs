module Stratosphere.CloudTrail.Trail.InsightSelectorProperty (
        InsightSelectorProperty(..), mkInsightSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-insightselector.html>
    InsightSelectorProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-insightselector.html#cfn-cloudtrail-trail-insightselector-insighttype>
                             insightType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightSelectorProperty :: InsightSelectorProperty
mkInsightSelectorProperty
  = InsightSelectorProperty
      {haddock_workaround_ = (), insightType = Prelude.Nothing}
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
  set newValue InsightSelectorProperty {..}
    = InsightSelectorProperty {insightType = Prelude.pure newValue, ..}