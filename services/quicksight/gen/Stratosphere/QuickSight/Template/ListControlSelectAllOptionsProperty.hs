module Stratosphere.QuickSight.Template.ListControlSelectAllOptionsProperty (
        ListControlSelectAllOptionsProperty(..),
        mkListControlSelectAllOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ListControlSelectAllOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontrolselectalloptions.html>
    ListControlSelectAllOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontrolselectalloptions.html#cfn-quicksight-template-listcontrolselectalloptions-visibility>
                                         visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlSelectAllOptionsProperty ::
  ListControlSelectAllOptionsProperty
mkListControlSelectAllOptionsProperty
  = ListControlSelectAllOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSelectAllOptionsProperty where
  toResourceProperties ListControlSelectAllOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ListControlSelectAllOptions",
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
  type PropertyType "Visibility" ListControlSelectAllOptionsProperty = JSON.Object
  set newValue ListControlSelectAllOptionsProperty {..}
    = ListControlSelectAllOptionsProperty
        {visibility = Prelude.pure newValue, ..}