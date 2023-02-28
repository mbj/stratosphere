module Stratosphere.AppFlow.Flow.CustomConnectorSourcePropertiesProperty (
        CustomConnectorSourcePropertiesProperty(..),
        mkCustomConnectorSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomConnectorSourcePropertiesProperty
  = CustomConnectorSourcePropertiesProperty {customProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                             entityName :: (Value Prelude.Text)}
mkCustomConnectorSourcePropertiesProperty ::
  Value Prelude.Text -> CustomConnectorSourcePropertiesProperty
mkCustomConnectorSourcePropertiesProperty entityName
  = CustomConnectorSourcePropertiesProperty
      {entityName = entityName, customProperties = Prelude.Nothing}
instance ToResourceProperties CustomConnectorSourcePropertiesProperty where
  toResourceProperties CustomConnectorSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.CustomConnectorSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityName" JSON..= entityName]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomProperties" Prelude.<$> customProperties]))}
instance JSON.ToJSON CustomConnectorSourcePropertiesProperty where
  toJSON CustomConnectorSourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityName" JSON..= entityName]
              (Prelude.catMaybes
                 [(JSON..=) "CustomProperties" Prelude.<$> customProperties])))
instance Property "CustomProperties" CustomConnectorSourcePropertiesProperty where
  type PropertyType "CustomProperties" CustomConnectorSourcePropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomConnectorSourcePropertiesProperty {..}
    = CustomConnectorSourcePropertiesProperty
        {customProperties = Prelude.pure newValue, ..}
instance Property "EntityName" CustomConnectorSourcePropertiesProperty where
  type PropertyType "EntityName" CustomConnectorSourcePropertiesProperty = Value Prelude.Text
  set newValue CustomConnectorSourcePropertiesProperty {..}
    = CustomConnectorSourcePropertiesProperty
        {entityName = newValue, ..}