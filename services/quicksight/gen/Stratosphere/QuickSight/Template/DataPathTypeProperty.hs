module Stratosphere.QuickSight.Template.DataPathTypeProperty (
        DataPathTypeProperty(..), mkDataPathTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathtype.html>
    DataPathTypeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathtype.html#cfn-quicksight-template-datapathtype-pivottabledatapathtype>
                          pivotTableDataPathType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPathTypeProperty :: DataPathTypeProperty
mkDataPathTypeProperty
  = DataPathTypeProperty
      {haddock_workaround_ = (),
       pivotTableDataPathType = Prelude.Nothing}
instance ToResourceProperties DataPathTypeProperty where
  toResourceProperties DataPathTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataPathType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PivotTableDataPathType"
                              Prelude.<$> pivotTableDataPathType])}
instance JSON.ToJSON DataPathTypeProperty where
  toJSON DataPathTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PivotTableDataPathType"
                 Prelude.<$> pivotTableDataPathType]))
instance Property "PivotTableDataPathType" DataPathTypeProperty where
  type PropertyType "PivotTableDataPathType" DataPathTypeProperty = Value Prelude.Text
  set newValue DataPathTypeProperty {..}
    = DataPathTypeProperty
        {pivotTableDataPathType = Prelude.pure newValue, ..}