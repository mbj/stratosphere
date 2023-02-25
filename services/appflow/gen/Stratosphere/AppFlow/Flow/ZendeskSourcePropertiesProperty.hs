module Stratosphere.AppFlow.Flow.ZendeskSourcePropertiesProperty (
        ZendeskSourcePropertiesProperty(..),
        mkZendeskSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskSourcePropertiesProperty
  = ZendeskSourcePropertiesProperty {object :: (Value Prelude.Text)}
mkZendeskSourcePropertiesProperty ::
  Value Prelude.Text -> ZendeskSourcePropertiesProperty
mkZendeskSourcePropertiesProperty object
  = ZendeskSourcePropertiesProperty {object = object}
instance ToResourceProperties ZendeskSourcePropertiesProperty where
  toResourceProperties ZendeskSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ZendeskSourceProperties",
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON ZendeskSourcePropertiesProperty where
  toJSON ZendeskSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" ZendeskSourcePropertiesProperty where
  type PropertyType "Object" ZendeskSourcePropertiesProperty = Value Prelude.Text
  set newValue ZendeskSourcePropertiesProperty {}
    = ZendeskSourcePropertiesProperty {object = newValue, ..}