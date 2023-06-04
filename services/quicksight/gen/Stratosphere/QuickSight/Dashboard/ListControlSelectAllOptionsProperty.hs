module Stratosphere.QuickSight.Dashboard.ListControlSelectAllOptionsProperty (
        ListControlSelectAllOptionsProperty(..),
        mkListControlSelectAllOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListControlSelectAllOptionsProperty
  = ListControlSelectAllOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkListControlSelectAllOptionsProperty ::
  ListControlSelectAllOptionsProperty
mkListControlSelectAllOptionsProperty
  = ListControlSelectAllOptionsProperty
      {visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSelectAllOptionsProperty where
  toResourceProperties ListControlSelectAllOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ListControlSelectAllOptions",
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
  set newValue ListControlSelectAllOptionsProperty {}
    = ListControlSelectAllOptionsProperty
        {visibility = Prelude.pure newValue, ..}