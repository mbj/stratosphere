module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.AccessLogSettingsProperty (
        AccessLogSettingsProperty(..), mkAccessLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessLogSettingsProperty
  = AccessLogSettingsProperty {destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                               format :: (Prelude.Maybe (Value Prelude.Text))}
mkAccessLogSettingsProperty :: AccessLogSettingsProperty
mkAccessLogSettingsProperty
  = AccessLogSettingsProperty
      {destinationArn = Prelude.Nothing, format = Prelude.Nothing}
instance ToResourceProperties AccessLogSettingsProperty where
  toResourceProperties AccessLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.AccessLogSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                            (JSON..=) "Format" Prelude.<$> format])}
instance JSON.ToJSON AccessLogSettingsProperty where
  toJSON AccessLogSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
               (JSON..=) "Format" Prelude.<$> format]))
instance Property "DestinationArn" AccessLogSettingsProperty where
  type PropertyType "DestinationArn" AccessLogSettingsProperty = Value Prelude.Text
  set newValue AccessLogSettingsProperty {..}
    = AccessLogSettingsProperty
        {destinationArn = Prelude.pure newValue, ..}
instance Property "Format" AccessLogSettingsProperty where
  type PropertyType "Format" AccessLogSettingsProperty = Value Prelude.Text
  set newValue AccessLogSettingsProperty {..}
    = AccessLogSettingsProperty {format = Prelude.pure newValue, ..}