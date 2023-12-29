module Stratosphere.Glue.Table.OrderProperty (
        OrderProperty(..), mkOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrderProperty
  = OrderProperty {column :: (Value Prelude.Text),
                   sortOrder :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrderProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> OrderProperty
mkOrderProperty column sortOrder
  = OrderProperty {column = column, sortOrder = sortOrder}
instance ToResourceProperties OrderProperty where
  toResourceProperties OrderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.Order", supportsTags = Prelude.False,
         properties = ["Column" JSON..= column,
                       "SortOrder" JSON..= sortOrder]}
instance JSON.ToJSON OrderProperty where
  toJSON OrderProperty {..}
    = JSON.object
        ["Column" JSON..= column, "SortOrder" JSON..= sortOrder]
instance Property "Column" OrderProperty where
  type PropertyType "Column" OrderProperty = Value Prelude.Text
  set newValue OrderProperty {..}
    = OrderProperty {column = newValue, ..}
instance Property "SortOrder" OrderProperty where
  type PropertyType "SortOrder" OrderProperty = Value Prelude.Integer
  set newValue OrderProperty {..}
    = OrderProperty {sortOrder = newValue, ..}