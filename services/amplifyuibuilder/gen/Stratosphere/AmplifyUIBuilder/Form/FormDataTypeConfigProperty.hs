module Stratosphere.AmplifyUIBuilder.Form.FormDataTypeConfigProperty (
        FormDataTypeConfigProperty(..), mkFormDataTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormDataTypeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formdatatypeconfig.html>
    FormDataTypeConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formdatatypeconfig.html#cfn-amplifyuibuilder-form-formdatatypeconfig-datasourcetype>
                                dataSourceType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formdatatypeconfig.html#cfn-amplifyuibuilder-form-formdatatypeconfig-datatypename>
                                dataTypeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormDataTypeConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FormDataTypeConfigProperty
mkFormDataTypeConfigProperty dataSourceType dataTypeName
  = FormDataTypeConfigProperty
      {haddock_workaround_ = (), dataSourceType = dataSourceType,
       dataTypeName = dataTypeName}
instance ToResourceProperties FormDataTypeConfigProperty where
  toResourceProperties FormDataTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormDataTypeConfig",
         supportsTags = Prelude.False,
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