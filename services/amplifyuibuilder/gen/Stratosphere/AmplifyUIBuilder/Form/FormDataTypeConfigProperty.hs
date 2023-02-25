module Stratosphere.AmplifyUIBuilder.Form.FormDataTypeConfigProperty (
        FormDataTypeConfigProperty(..), mkFormDataTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormDataTypeConfigProperty
  = FormDataTypeConfigProperty {dataSourceType :: (Value Prelude.Text),
                                dataTypeName :: (Value Prelude.Text)}
mkFormDataTypeConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FormDataTypeConfigProperty
mkFormDataTypeConfigProperty dataSourceType dataTypeName
  = FormDataTypeConfigProperty
      {dataSourceType = dataSourceType, dataTypeName = dataTypeName}
instance ToResourceProperties FormDataTypeConfigProperty where
  toResourceProperties FormDataTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormDataTypeConfig",
         properties = ["DataSourceType" JSON..= dataSourceType,
                       "DataTypeName" JSON..= dataTypeName]}
instance JSON.ToJSON FormDataTypeConfigProperty where
  toJSON FormDataTypeConfigProperty {..}
    = JSON.object
        ["DataSourceType" JSON..= dataSourceType,
         "DataTypeName" JSON..= dataTypeName]
instance Property "DataSourceType" FormDataTypeConfigProperty where
  type PropertyType "DataSourceType" FormDataTypeConfigProperty = Value Prelude.Text
  set newValue FormDataTypeConfigProperty {..}
    = FormDataTypeConfigProperty {dataSourceType = newValue, ..}
instance Property "DataTypeName" FormDataTypeConfigProperty where
  type PropertyType "DataTypeName" FormDataTypeConfigProperty = Value Prelude.Text
  set newValue FormDataTypeConfigProperty {..}
    = FormDataTypeConfigProperty {dataTypeName = newValue, ..}