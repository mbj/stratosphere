module Stratosphere.QuickSight.Analysis.TableStyleTargetProperty (
        TableStyleTargetProperty(..), mkTableStyleTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableStyleTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablestyletarget.html>
    TableStyleTargetProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablestyletarget.html#cfn-quicksight-analysis-tablestyletarget-celltype>
                              cellType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableStyleTargetProperty ::
  Value Prelude.Text -> TableStyleTargetProperty
mkTableStyleTargetProperty cellType
  = TableStyleTargetProperty
      {haddock_workaround_ = (), cellType = cellType}
instance ToResourceProperties TableStyleTargetProperty where
  toResourceProperties TableStyleTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableStyleTarget",
         supportsTags = Prelude.False,
         properties = ["CellType" JSON..= cellType]}
instance JSON.ToJSON TableStyleTargetProperty where
  toJSON TableStyleTargetProperty {..}
    = JSON.object ["CellType" JSON..= cellType]
instance Property "CellType" TableStyleTargetProperty where
  type PropertyType "CellType" TableStyleTargetProperty = Value Prelude.Text
  set newValue TableStyleTargetProperty {..}
    = TableStyleTargetProperty {cellType = newValue, ..}