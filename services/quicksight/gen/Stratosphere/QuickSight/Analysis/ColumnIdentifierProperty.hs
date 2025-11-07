module Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty (
        ColumnIdentifierProperty(..), mkColumnIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-columnidentifier.html>
    ColumnIdentifierProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-columnidentifier.html#cfn-quicksight-analysis-columnidentifier-columnname>
                              columnName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-columnidentifier.html#cfn-quicksight-analysis-columnidentifier-datasetidentifier>
                              dataSetIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ColumnIdentifierProperty
mkColumnIdentifierProperty columnName dataSetIdentifier
  = ColumnIdentifierProperty
      {haddock_workaround_ = (), columnName = columnName,
       dataSetIdentifier = dataSetIdentifier}
instance ToResourceProperties ColumnIdentifierProperty where
  toResourceProperties ColumnIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ColumnIdentifier",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "DataSetIdentifier" JSON..= dataSetIdentifier]}
instance JSON.ToJSON ColumnIdentifierProperty where
  toJSON ColumnIdentifierProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName,
         "DataSetIdentifier" JSON..= dataSetIdentifier]
instance Property "ColumnName" ColumnIdentifierProperty where
  type PropertyType "ColumnName" ColumnIdentifierProperty = Value Prelude.Text
  set newValue ColumnIdentifierProperty {..}
    = ColumnIdentifierProperty {columnName = newValue, ..}
instance Property "DataSetIdentifier" ColumnIdentifierProperty where
  type PropertyType "DataSetIdentifier" ColumnIdentifierProperty = Value Prelude.Text
  set newValue ColumnIdentifierProperty {..}
    = ColumnIdentifierProperty {dataSetIdentifier = newValue, ..}