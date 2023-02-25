module Stratosphere.AppFlow.ConnectorProfile.CustomConnectorProfilePropertiesProperty (
        module Exports, CustomConnectorProfilePropertiesProperty(..),
        mkCustomConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.OAuth2PropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomConnectorProfilePropertiesProperty
  = CustomConnectorProfilePropertiesProperty {oAuth2Properties :: (Prelude.Maybe OAuth2PropertiesProperty),
                                              profileProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkCustomConnectorProfilePropertiesProperty ::
  CustomConnectorProfilePropertiesProperty
mkCustomConnectorProfilePropertiesProperty
  = CustomConnectorProfilePropertiesProperty
      {oAuth2Properties = Prelude.Nothing,
       profileProperties = Prelude.Nothing}
instance ToResourceProperties CustomConnectorProfilePropertiesProperty where
  toResourceProperties CustomConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.CustomConnectorProfileProperties",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
                            (JSON..=) "ProfileProperties" Prelude.<$> profileProperties])}
instance JSON.ToJSON CustomConnectorProfilePropertiesProperty where
  toJSON CustomConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
               (JSON..=) "ProfileProperties" Prelude.<$> profileProperties]))
instance Property "OAuth2Properties" CustomConnectorProfilePropertiesProperty where
  type PropertyType "OAuth2Properties" CustomConnectorProfilePropertiesProperty = OAuth2PropertiesProperty
  set newValue CustomConnectorProfilePropertiesProperty {..}
    = CustomConnectorProfilePropertiesProperty
        {oAuth2Properties = Prelude.pure newValue, ..}
instance Property "ProfileProperties" CustomConnectorProfilePropertiesProperty where
  type PropertyType "ProfileProperties" CustomConnectorProfilePropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomConnectorProfilePropertiesProperty {..}
    = CustomConnectorProfilePropertiesProperty
        {profileProperties = Prelude.pure newValue, ..}