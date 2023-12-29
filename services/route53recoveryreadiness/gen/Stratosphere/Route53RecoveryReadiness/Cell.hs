module Stratosphere.Route53RecoveryReadiness.Cell (
        Cell(..), mkCell
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cell
  = Cell {cellName :: (Prelude.Maybe (Value Prelude.Text)),
          cells :: (Prelude.Maybe (ValueList Prelude.Text)),
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCell :: Cell
mkCell
  = Cell
      {cellName = Prelude.Nothing, cells = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Cell where
  toResourceProperties Cell {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::Cell",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CellName" Prelude.<$> cellName,
                            (JSON..=) "Cells" Prelude.<$> cells,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Cell where
  toJSON Cell {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CellName" Prelude.<$> cellName,
               (JSON..=) "Cells" Prelude.<$> cells,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CellName" Cell where
  type PropertyType "CellName" Cell = Value Prelude.Text
  set newValue Cell {..}
    = Cell {cellName = Prelude.pure newValue, ..}
instance Property "Cells" Cell where
  type PropertyType "Cells" Cell = ValueList Prelude.Text
  set newValue Cell {..} = Cell {cells = Prelude.pure newValue, ..}
instance Property "Tags" Cell where
  type PropertyType "Tags" Cell = [Tag]
  set newValue Cell {..} = Cell {tags = Prelude.pure newValue, ..}