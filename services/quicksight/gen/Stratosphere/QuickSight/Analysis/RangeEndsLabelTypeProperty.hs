module Stratosphere.QuickSight.Analysis.RangeEndsLabelTypeProperty (
        RangeEndsLabelTypeProperty(..), mkRangeEndsLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeEndsLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-rangeendslabeltype.html>
    RangeEndsLabelTypeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-rangeendslabeltype.html#cfn-quicksight-analysis-rangeendslabeltype-visibility>
                                visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeEndsLabelTypeProperty :: RangeEndsLabelTypeProperty
mkRangeEndsLabelTypeProperty
  = RangeEndsLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties RangeEndsLabelTypeProperty where
  toResourceProperties RangeEndsLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RangeEndsLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON RangeEndsLabelTypeProperty where
  toJSON RangeEndsLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" RangeEndsLabelTypeProperty where
  type PropertyType "Visibility" RangeEndsLabelTypeProperty = Value Prelude.Text
  set newValue RangeEndsLabelTypeProperty {..}
    = RangeEndsLabelTypeProperty
        {visibility = Prelude.pure newValue, ..}