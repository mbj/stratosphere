module Stratosphere.QuickSight.DataSet.LookbackWindowProperty (
        LookbackWindowProperty(..), mkLookbackWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LookbackWindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-lookbackwindow.html>
    LookbackWindowProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-lookbackwindow.html#cfn-quicksight-dataset-lookbackwindow-columnname>
                            columnName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-lookbackwindow.html#cfn-quicksight-dataset-lookbackwindow-size>
                            size :: (Value Prelude.Double),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-lookbackwindow.html#cfn-quicksight-dataset-lookbackwindow-sizeunit>
                            sizeUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLookbackWindowProperty ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Text -> LookbackWindowProperty
mkLookbackWindowProperty columnName size sizeUnit
  = LookbackWindowProperty
      {haddock_workaround_ = (), columnName = columnName, size = size,
       sizeUnit = sizeUnit}
instance ToResourceProperties LookbackWindowProperty where
  toResourceProperties LookbackWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LookbackWindow",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName, "Size" JSON..= size,
                       "SizeUnit" JSON..= sizeUnit]}
instance JSON.ToJSON LookbackWindowProperty where
  toJSON LookbackWindowProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "Size" JSON..= size,
         "SizeUnit" JSON..= sizeUnit]
instance Property "ColumnName" LookbackWindowProperty where
  type PropertyType "ColumnName" LookbackWindowProperty = Value Prelude.Text
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {columnName = newValue, ..}
instance Property "Size" LookbackWindowProperty where
  type PropertyType "Size" LookbackWindowProperty = Value Prelude.Double
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {size = newValue, ..}
instance Property "SizeUnit" LookbackWindowProperty where
  type PropertyType "SizeUnit" LookbackWindowProperty = Value Prelude.Text
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {sizeUnit = newValue, ..}