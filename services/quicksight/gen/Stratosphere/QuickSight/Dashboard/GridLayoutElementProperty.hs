module Stratosphere.QuickSight.Dashboard.GridLayoutElementProperty (
        GridLayoutElementProperty(..), mkGridLayoutElementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GridLayoutElementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html>
    GridLayoutElementProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-columnindex>
                               columnIndex :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-columnspan>
                               columnSpan :: (Value Prelude.Double),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-elementid>
                               elementId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-elementtype>
                               elementType :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-rowindex>
                               rowIndex :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gridlayoutelement.html#cfn-quicksight-dashboard-gridlayoutelement-rowspan>
                               rowSpan :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGridLayoutElementProperty ::
  Value Prelude.Double
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Double -> GridLayoutElementProperty
mkGridLayoutElementProperty
  columnSpan
  elementId
  elementType
  rowSpan
  = GridLayoutElementProperty
      {haddock_workaround_ = (), columnSpan = columnSpan,
       elementId = elementId, elementType = elementType,
       rowSpan = rowSpan, columnIndex = Prelude.Nothing,
       rowIndex = Prelude.Nothing}
instance ToResourceProperties GridLayoutElementProperty where
  toResourceProperties GridLayoutElementProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GridLayoutElement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnSpan" JSON..= columnSpan, "ElementId" JSON..= elementId,
                            "ElementType" JSON..= elementType, "RowSpan" JSON..= rowSpan]
                           (Prelude.catMaybes
                              [(JSON..=) "ColumnIndex" Prelude.<$> columnIndex,
                               (JSON..=) "RowIndex" Prelude.<$> rowIndex]))}
instance JSON.ToJSON GridLayoutElementProperty where
  toJSON GridLayoutElementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnSpan" JSON..= columnSpan, "ElementId" JSON..= elementId,
               "ElementType" JSON..= elementType, "RowSpan" JSON..= rowSpan]
              (Prelude.catMaybes
                 [(JSON..=) "ColumnIndex" Prelude.<$> columnIndex,
                  (JSON..=) "RowIndex" Prelude.<$> rowIndex])))
instance Property "ColumnIndex" GridLayoutElementProperty where
  type PropertyType "ColumnIndex" GridLayoutElementProperty = Value Prelude.Double
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty
        {columnIndex = Prelude.pure newValue, ..}
instance Property "ColumnSpan" GridLayoutElementProperty where
  type PropertyType "ColumnSpan" GridLayoutElementProperty = Value Prelude.Double
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty {columnSpan = newValue, ..}
instance Property "ElementId" GridLayoutElementProperty where
  type PropertyType "ElementId" GridLayoutElementProperty = Value Prelude.Text
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty {elementId = newValue, ..}
instance Property "ElementType" GridLayoutElementProperty where
  type PropertyType "ElementType" GridLayoutElementProperty = Value Prelude.Text
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty {elementType = newValue, ..}
instance Property "RowIndex" GridLayoutElementProperty where
  type PropertyType "RowIndex" GridLayoutElementProperty = Value Prelude.Double
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty {rowIndex = Prelude.pure newValue, ..}
instance Property "RowSpan" GridLayoutElementProperty where
  type PropertyType "RowSpan" GridLayoutElementProperty = Value Prelude.Double
  set newValue GridLayoutElementProperty {..}
    = GridLayoutElementProperty {rowSpan = newValue, ..}