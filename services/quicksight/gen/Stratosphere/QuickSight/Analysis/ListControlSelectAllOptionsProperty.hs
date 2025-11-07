module Stratosphere.QuickSight.Analysis.ListControlSelectAllOptionsProperty (
        ListControlSelectAllOptionsProperty(..),
        mkListControlSelectAllOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListControlSelectAllOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontrolselectalloptions.html>
    ListControlSelectAllOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontrolselectalloptions.html#cfn-quicksight-analysis-listcontrolselectalloptions-visibility>
                                         visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlSelectAllOptionsProperty ::
  ListControlSelectAllOptionsProperty
mkListControlSelectAllOptionsProperty
  = ListControlSelectAllOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSelectAllOptionsProperty where
  toResourceProperties ListControlSelectAllOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ListControlSelectAllOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ListControlSelectAllOptionsProperty where
  toJSON ListControlSelectAllOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" ListControlSelectAllOptionsProperty where
  type PropertyType "Visibility" ListControlSelectAllOptionsProperty = Value Prelude.Text
  set newValue ListControlSelectAllOptionsProperty {..}
    = ListControlSelectAllOptionsProperty
        {visibility = Prelude.pure newValue, ..}