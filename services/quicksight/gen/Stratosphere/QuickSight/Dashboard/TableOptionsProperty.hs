module Stratosphere.QuickSight.Dashboard.TableOptionsProperty (
        module Exports, TableOptionsProperty(..), mkTableOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RowAlternateColorOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableCellStyleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableoptions.html>
    TableOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableoptions.html#cfn-quicksight-dashboard-tableoptions-cellstyle>
                          cellStyle :: (Prelude.Maybe TableCellStyleProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableoptions.html#cfn-quicksight-dashboard-tableoptions-headerstyle>
                          headerStyle :: (Prelude.Maybe TableCellStyleProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableoptions.html#cfn-quicksight-dashboard-tableoptions-orientation>
                          orientation :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableoptions.html#cfn-quicksight-dashboard-tableoptions-rowalternatecoloroptions>
                          rowAlternateColorOptions :: (Prelude.Maybe RowAlternateColorOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableOptionsProperty :: TableOptionsProperty
mkTableOptionsProperty
  = TableOptionsProperty
      {haddock_workaround_ = (), cellStyle = Prelude.Nothing,
       headerStyle = Prelude.Nothing, orientation = Prelude.Nothing,
       rowAlternateColorOptions = Prelude.Nothing}
instance ToResourceProperties TableOptionsProperty where
  toResourceProperties TableOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CellStyle" Prelude.<$> cellStyle,
                            (JSON..=) "HeaderStyle" Prelude.<$> headerStyle,
                            (JSON..=) "Orientation" Prelude.<$> orientation,
                            (JSON..=) "RowAlternateColorOptions"
                              Prelude.<$> rowAlternateColorOptions])}
instance JSON.ToJSON TableOptionsProperty where
  toJSON TableOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CellStyle" Prelude.<$> cellStyle,
               (JSON..=) "HeaderStyle" Prelude.<$> headerStyle,
               (JSON..=) "Orientation" Prelude.<$> orientation,
               (JSON..=) "RowAlternateColorOptions"
                 Prelude.<$> rowAlternateColorOptions]))
instance Property "CellStyle" TableOptionsProperty where
  type PropertyType "CellStyle" TableOptionsProperty = TableCellStyleProperty
  set newValue TableOptionsProperty {..}
    = TableOptionsProperty {cellStyle = Prelude.pure newValue, ..}
instance Property "HeaderStyle" TableOptionsProperty where
  type PropertyType "HeaderStyle" TableOptionsProperty = TableCellStyleProperty
  set newValue TableOptionsProperty {..}
    = TableOptionsProperty {headerStyle = Prelude.pure newValue, ..}
instance Property "Orientation" TableOptionsProperty where
  type PropertyType "Orientation" TableOptionsProperty = Value Prelude.Text
  set newValue TableOptionsProperty {..}
    = TableOptionsProperty {orientation = Prelude.pure newValue, ..}
instance Property "RowAlternateColorOptions" TableOptionsProperty where
  type PropertyType "RowAlternateColorOptions" TableOptionsProperty = RowAlternateColorOptionsProperty
  set newValue TableOptionsProperty {..}
    = TableOptionsProperty
        {rowAlternateColorOptions = Prelude.pure newValue, ..}