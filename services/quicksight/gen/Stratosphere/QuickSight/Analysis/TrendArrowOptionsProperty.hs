module Stratosphere.QuickSight.Analysis.TrendArrowOptionsProperty (
        TrendArrowOptionsProperty(..), mkTrendArrowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrendArrowOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-trendarrowoptions.html>
    TrendArrowOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-trendarrowoptions.html#cfn-quicksight-analysis-trendarrowoptions-visibility>
                               visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrendArrowOptionsProperty :: TrendArrowOptionsProperty
mkTrendArrowOptionsProperty
  = TrendArrowOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties TrendArrowOptionsProperty where
  toResourceProperties TrendArrowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TrendArrowOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON TrendArrowOptionsProperty where
  toJSON TrendArrowOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" TrendArrowOptionsProperty where
  type PropertyType "Visibility" TrendArrowOptionsProperty = Value Prelude.Text
  set newValue TrendArrowOptionsProperty {..}
    = TrendArrowOptionsProperty
        {visibility = Prelude.pure newValue, ..}