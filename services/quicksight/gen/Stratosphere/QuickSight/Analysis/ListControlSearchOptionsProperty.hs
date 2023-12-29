module Stratosphere.QuickSight.Analysis.ListControlSearchOptionsProperty (
        ListControlSearchOptionsProperty(..),
        mkListControlSearchOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListControlSearchOptionsProperty
  = ListControlSearchOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlSearchOptionsProperty ::
  ListControlSearchOptionsProperty
mkListControlSearchOptionsProperty
  = ListControlSearchOptionsProperty {visibility = Prelude.Nothing}
instance ToResourceProperties ListControlSearchOptionsProperty where
  toResourceProperties ListControlSearchOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ListControlSearchOptions",
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
  set newValue ListControlSearchOptionsProperty {}
    = ListControlSearchOptionsProperty
        {visibility = Prelude.pure newValue, ..}