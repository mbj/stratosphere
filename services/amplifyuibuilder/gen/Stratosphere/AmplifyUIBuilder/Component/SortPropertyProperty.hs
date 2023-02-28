module Stratosphere.AmplifyUIBuilder.Component.SortPropertyProperty (
        SortPropertyProperty(..), mkSortPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SortPropertyProperty
  = SortPropertyProperty {direction :: (Value Prelude.Text),
                          field :: (Value Prelude.Text)}
mkSortPropertyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SortPropertyProperty
mkSortPropertyProperty direction field
  = SortPropertyProperty {direction = direction, field = field}
instance ToResourceProperties SortPropertyProperty where
  toResourceProperties SortPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.SortProperty",
         supportsTags = Prelude.False,
         properties = ["Direction" JSON..= direction,
                       "Field" JSON..= field]}
instance JSON.ToJSON SortPropertyProperty where
  toJSON SortPropertyProperty {..}
    = JSON.object
        ["Direction" JSON..= direction, "Field" JSON..= field]
instance Property "Direction" SortPropertyProperty where
  type PropertyType "Direction" SortPropertyProperty = Value Prelude.Text
  set newValue SortPropertyProperty {..}
    = SortPropertyProperty {direction = newValue, ..}
instance Property "Field" SortPropertyProperty where
  type PropertyType "Field" SortPropertyProperty = Value Prelude.Text
  set newValue SortPropertyProperty {..}
    = SortPropertyProperty {field = newValue, ..}