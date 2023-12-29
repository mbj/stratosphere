module Stratosphere.QuickSight.Analysis.MappedDataSetParameterProperty (
        MappedDataSetParameterProperty(..),
        mkMappedDataSetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MappedDataSetParameterProperty
  = MappedDataSetParameterProperty {dataSetIdentifier :: (Value Prelude.Text),
                                    dataSetParameterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappedDataSetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MappedDataSetParameterProperty
mkMappedDataSetParameterProperty
  dataSetIdentifier
  dataSetParameterName
  = MappedDataSetParameterProperty
      {dataSetIdentifier = dataSetIdentifier,
       dataSetParameterName = dataSetParameterName}
instance ToResourceProperties MappedDataSetParameterProperty where
  toResourceProperties MappedDataSetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.MappedDataSetParameter",
         supportsTags = Prelude.False,
         properties = ["DataSetIdentifier" JSON..= dataSetIdentifier,
                       "DataSetParameterName" JSON..= dataSetParameterName]}
instance JSON.ToJSON MappedDataSetParameterProperty where
  toJSON MappedDataSetParameterProperty {..}
    = JSON.object
        ["DataSetIdentifier" JSON..= dataSetIdentifier,
         "DataSetParameterName" JSON..= dataSetParameterName]
instance Property "DataSetIdentifier" MappedDataSetParameterProperty where
  type PropertyType "DataSetIdentifier" MappedDataSetParameterProperty = Value Prelude.Text
  set newValue MappedDataSetParameterProperty {..}
    = MappedDataSetParameterProperty {dataSetIdentifier = newValue, ..}
instance Property "DataSetParameterName" MappedDataSetParameterProperty where
  type PropertyType "DataSetParameterName" MappedDataSetParameterProperty = Value Prelude.Text
  set newValue MappedDataSetParameterProperty {..}
    = MappedDataSetParameterProperty
        {dataSetParameterName = newValue, ..}