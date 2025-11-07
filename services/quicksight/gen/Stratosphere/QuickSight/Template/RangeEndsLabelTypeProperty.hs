module Stratosphere.QuickSight.Template.RangeEndsLabelTypeProperty (
        RangeEndsLabelTypeProperty(..), mkRangeEndsLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data RangeEndsLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-rangeendslabeltype.html>
    RangeEndsLabelTypeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-rangeendslabeltype.html#cfn-quicksight-template-rangeendslabeltype-visibility>
                                visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeEndsLabelTypeProperty :: RangeEndsLabelTypeProperty
mkRangeEndsLabelTypeProperty
  = RangeEndsLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties RangeEndsLabelTypeProperty where
  toResourceProperties RangeEndsLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RangeEndsLabelType",
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
  type PropertyType "Visibility" RangeEndsLabelTypeProperty = JSON.Object
  set newValue RangeEndsLabelTypeProperty {..}
    = RangeEndsLabelTypeProperty
        {visibility = Prelude.pure newValue, ..}