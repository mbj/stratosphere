module Stratosphere.QuickSight.Dashboard.TablePinnedFieldOptionsProperty (
        TablePinnedFieldOptionsProperty(..),
        mkTablePinnedFieldOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TablePinnedFieldOptionsProperty
  = TablePinnedFieldOptionsProperty {pinnedLeftFields :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTablePinnedFieldOptionsProperty ::
  TablePinnedFieldOptionsProperty
mkTablePinnedFieldOptionsProperty
  = TablePinnedFieldOptionsProperty
      {pinnedLeftFields = Prelude.Nothing}
instance ToResourceProperties TablePinnedFieldOptionsProperty where
  toResourceProperties TablePinnedFieldOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TablePinnedFieldOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PinnedLeftFields" Prelude.<$> pinnedLeftFields])}
instance JSON.ToJSON TablePinnedFieldOptionsProperty where
  toJSON TablePinnedFieldOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PinnedLeftFields" Prelude.<$> pinnedLeftFields]))
instance Property "PinnedLeftFields" TablePinnedFieldOptionsProperty where
  type PropertyType "PinnedLeftFields" TablePinnedFieldOptionsProperty = ValueList Prelude.Text
  set newValue TablePinnedFieldOptionsProperty {}
    = TablePinnedFieldOptionsProperty
        {pinnedLeftFields = Prelude.pure newValue, ..}