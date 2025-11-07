module Stratosphere.QuickSight.Template.DataSetReferenceProperty (
        DataSetReferenceProperty(..), mkDataSetReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetreference.html>
    DataSetReferenceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetreference.html#cfn-quicksight-template-datasetreference-datasetarn>
                              dataSetArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetreference.html#cfn-quicksight-template-datasetreference-datasetplaceholder>
                              dataSetPlaceholder :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataSetReferenceProperty
mkDataSetReferenceProperty dataSetArn dataSetPlaceholder
  = DataSetReferenceProperty
      {haddock_workaround_ = (), dataSetArn = dataSetArn,
       dataSetPlaceholder = dataSetPlaceholder}
instance ToResourceProperties DataSetReferenceProperty where
  toResourceProperties DataSetReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataSetReference",
         supportsTags = Prelude.False,
         properties = ["DataSetArn" JSON..= dataSetArn,
                       "DataSetPlaceholder" JSON..= dataSetPlaceholder]}
instance JSON.ToJSON DataSetReferenceProperty where
  toJSON DataSetReferenceProperty {..}
    = JSON.object
        ["DataSetArn" JSON..= dataSetArn,
         "DataSetPlaceholder" JSON..= dataSetPlaceholder]
instance Property "DataSetArn" DataSetReferenceProperty where
  type PropertyType "DataSetArn" DataSetReferenceProperty = Value Prelude.Text
  set newValue DataSetReferenceProperty {..}
    = DataSetReferenceProperty {dataSetArn = newValue, ..}
instance Property "DataSetPlaceholder" DataSetReferenceProperty where
  type PropertyType "DataSetPlaceholder" DataSetReferenceProperty = Value Prelude.Text
  set newValue DataSetReferenceProperty {..}
    = DataSetReferenceProperty {dataSetPlaceholder = newValue, ..}