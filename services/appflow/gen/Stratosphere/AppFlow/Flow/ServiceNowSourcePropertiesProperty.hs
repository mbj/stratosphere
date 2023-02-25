module Stratosphere.AppFlow.Flow.ServiceNowSourcePropertiesProperty (
        ServiceNowSourcePropertiesProperty(..),
        mkServiceNowSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowSourcePropertiesProperty
  = ServiceNowSourcePropertiesProperty {object :: (Value Prelude.Text)}
mkServiceNowSourcePropertiesProperty ::
  Value Prelude.Text -> ServiceNowSourcePropertiesProperty
mkServiceNowSourcePropertiesProperty object
  = ServiceNowSourcePropertiesProperty {object = object}
instance ToResourceProperties ServiceNowSourcePropertiesProperty where
  toResourceProperties ServiceNowSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ServiceNowSourceProperties",
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON ServiceNowSourcePropertiesProperty where
  toJSON ServiceNowSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" ServiceNowSourcePropertiesProperty where
  type PropertyType "Object" ServiceNowSourcePropertiesProperty = Value Prelude.Text
  set newValue ServiceNowSourcePropertiesProperty {}
    = ServiceNowSourcePropertiesProperty {object = newValue, ..}