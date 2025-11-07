module Stratosphere.QuickSight.Dashboard.PivotTableDataPathOptionProperty (
        module Exports, PivotTableDataPathOptionProperty(..),
        mkPivotTableDataPathOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPathValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableDataPathOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottabledatapathoption.html>
    PivotTableDataPathOptionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottabledatapathoption.html#cfn-quicksight-dashboard-pivottabledatapathoption-datapathlist>
                                      dataPathList :: [DataPathValueProperty],
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottabledatapathoption.html#cfn-quicksight-dashboard-pivottabledatapathoption-width>
                                      width :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableDataPathOptionProperty ::
  [DataPathValueProperty] -> PivotTableDataPathOptionProperty
mkPivotTableDataPathOptionProperty dataPathList
  = PivotTableDataPathOptionProperty
      {haddock_workaround_ = (), dataPathList = dataPathList,
       width = Prelude.Nothing}
instance ToResourceProperties PivotTableDataPathOptionProperty where
  toResourceProperties PivotTableDataPathOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableDataPathOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataPathList" JSON..= dataPathList]
                           (Prelude.catMaybes [(JSON..=) "Width" Prelude.<$> width]))}
instance JSON.ToJSON PivotTableDataPathOptionProperty where
  toJSON PivotTableDataPathOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataPathList" JSON..= dataPathList]
              (Prelude.catMaybes [(JSON..=) "Width" Prelude.<$> width])))
instance Property "DataPathList" PivotTableDataPathOptionProperty where
  type PropertyType "DataPathList" PivotTableDataPathOptionProperty = [DataPathValueProperty]
  set newValue PivotTableDataPathOptionProperty {..}
    = PivotTableDataPathOptionProperty {dataPathList = newValue, ..}
instance Property "Width" PivotTableDataPathOptionProperty where
  type PropertyType "Width" PivotTableDataPathOptionProperty = Value Prelude.Text
  set newValue PivotTableDataPathOptionProperty {..}
    = PivotTableDataPathOptionProperty
        {width = Prelude.pure newValue, ..}