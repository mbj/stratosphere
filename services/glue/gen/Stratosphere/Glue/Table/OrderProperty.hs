module Stratosphere.Glue.Table.OrderProperty (
        OrderProperty(..), mkOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html>
    OrderProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-column>
                   column :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-sortorder>
                   sortOrder :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrderProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> OrderProperty
mkOrderProperty column sortOrder
  = OrderProperty
      {haddock_workaround_ = (), column = column, sortOrder = sortOrder}
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