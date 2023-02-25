module Stratosphere.AppFlow.Flow.SAPODataSourcePropertiesProperty (
        SAPODataSourcePropertiesProperty(..),
        mkSAPODataSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataSourcePropertiesProperty
  = SAPODataSourcePropertiesProperty {objectPath :: (Value Prelude.Text)}
mkSAPODataSourcePropertiesProperty ::
  Value Prelude.Text -> SAPODataSourcePropertiesProperty
mkSAPODataSourcePropertiesProperty objectPath
  = SAPODataSourcePropertiesProperty {objectPath = objectPath}
instance ToResourceProperties SAPODataSourcePropertiesProperty where
  toResourceProperties SAPODataSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataSourceProperties",
         properties = ["ObjectPath" JSON..= objectPath]}
instance JSON.ToJSON SAPODataSourcePropertiesProperty where
  toJSON SAPODataSourcePropertiesProperty {..}
    = JSON.object ["ObjectPath" JSON..= objectPath]
instance Property "ObjectPath" SAPODataSourcePropertiesProperty where
  type PropertyType "ObjectPath" SAPODataSourcePropertiesProperty = Value Prelude.Text
  set newValue SAPODataSourcePropertiesProperty {}
    = SAPODataSourcePropertiesProperty {objectPath = newValue, ..}