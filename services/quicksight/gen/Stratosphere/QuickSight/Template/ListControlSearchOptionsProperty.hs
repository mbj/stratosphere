module Stratosphere.QuickSight.Template.ListControlSearchOptionsProperty (
        ListControlSearchOptionsProperty(..),
        mkListControlSearchOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ListControlSearchOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontrolsearchoptions.html>
    ListControlSearchOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontrolsearchoptions.html#cfn-quicksight-template-listcontrolsearchoptions-visibility>
                                      visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlSearchOptionsProperty ::
  ListControlSearchOptionsProperty
mkListControlSearchOptionsProperty
  = ListControlSearchOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSearchOptionsProperty where
  toResourceProperties ListControlSearchOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ListControlSearchOptions",
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
  type PropertyType "Visibility" ListControlSearchOptionsProperty = JSON.Object
  set newValue ListControlSearchOptionsProperty {..}
    = ListControlSearchOptionsProperty
        {visibility = Prelude.pure newValue, ..}