module Stratosphere.Glue.Partition.OrderProperty (
        OrderProperty(..), mkOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrderProperty
  = OrderProperty {column :: (Value Prelude.Text),
                   sortOrder :: (Prelude.Maybe (Value Prelude.Integer))}
mkOrderProperty :: Value Prelude.Text -> OrderProperty
mkOrderProperty column
  = OrderProperty {column = column, sortOrder = Prelude.Nothing}
instance ToResourceProperties OrderProperty where
  toResourceProperties OrderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.Order",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes [(JSON..=) "SortOrder" Prelude.<$> sortOrder]))}
instance JSON.ToJSON OrderProperty where
  toJSON OrderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes [(JSON..=) "SortOrder" Prelude.<$> sortOrder])))
instance Property "Column" OrderProperty where
  type PropertyType "Column" OrderProperty = Value Prelude.Text
  set newValue OrderProperty {..}
    = OrderProperty {column = newValue, ..}
instance Property "SortOrder" OrderProperty where
  type PropertyType "SortOrder" OrderProperty = Value Prelude.Integer
  set newValue OrderProperty {..}
    = OrderProperty {sortOrder = Prelude.pure newValue, ..}