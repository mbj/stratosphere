module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.AccessLogSettingsProperty (
        AccessLogSettingsProperty(..), mkAccessLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessLogSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html>
    AccessLogSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings-destinationarn>
                               destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings-format>
                               format :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessLogSettingsProperty :: AccessLogSettingsProperty
mkAccessLogSettingsProperty
  = AccessLogSettingsProperty
      {haddock_workaround_ = (), destinationArn = Prelude.Nothing,
       format = Prelude.Nothing}
instance ToResourceProperties AccessLogSettingsProperty where
  toResourceProperties AccessLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.AccessLogSettings",
         supportsTags = Prelude.False,
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