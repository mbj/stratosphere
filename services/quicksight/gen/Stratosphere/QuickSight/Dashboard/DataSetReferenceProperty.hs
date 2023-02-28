module Stratosphere.QuickSight.Dashboard.DataSetReferenceProperty (
        DataSetReferenceProperty(..), mkDataSetReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetReferenceProperty
  = DataSetReferenceProperty {dataSetArn :: (Value Prelude.Text),
                              dataSetPlaceholder :: (Value Prelude.Text)}
mkDataSetReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataSetReferenceProperty
mkDataSetReferenceProperty dataSetArn dataSetPlaceholder
  = DataSetReferenceProperty
      {dataSetArn = dataSetArn, dataSetPlaceholder = dataSetPlaceholder}
instance ToResourceProperties DataSetReferenceProperty where
  toResourceProperties DataSetReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataSetReference",
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