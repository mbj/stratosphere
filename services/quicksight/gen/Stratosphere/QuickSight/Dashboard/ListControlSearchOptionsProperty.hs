module Stratosphere.QuickSight.Dashboard.ListControlSearchOptionsProperty (
        ListControlSearchOptionsProperty(..),
        mkListControlSearchOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListControlSearchOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-listcontrolsearchoptions.html>
    ListControlSearchOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-listcontrolsearchoptions.html#cfn-quicksight-dashboard-listcontrolsearchoptions-visibility>
                                      visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlSearchOptionsProperty ::
  ListControlSearchOptionsProperty
mkListControlSearchOptionsProperty
  = ListControlSearchOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSearchOptionsProperty where
  toResourceProperties ListControlSearchOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ListControlSearchOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ListControlSearchOptionsProperty where
  toJSON ListControlSearchOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" ListControlSearchOptionsProperty where
  type PropertyType "Visibility" ListControlSearchOptionsProperty = Value Prelude.Text
  set newValue ListControlSearchOptionsProperty {..}
    = ListControlSearchOptionsProperty
        {visibility = Prelude.pure newValue, ..}