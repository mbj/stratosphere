module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.IntegrationOverridesProperty (
        IntegrationOverridesProperty(..), mkIntegrationOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationOverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html>
    IntegrationOverridesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-integrationmethod>
                                  integrationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-payloadformatversion>
                                  payloadFormatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-timeoutinmillis>
                                  timeoutInMillis :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegrationOverridesProperty :: IntegrationOverridesProperty
mkIntegrationOverridesProperty
  = IntegrationOverridesProperty
      {haddock_workaround_ = (), description = Prelude.Nothing,
       integrationMethod = Prelude.Nothing,
       payloadFormatVersion = Prelude.Nothing,
       timeoutInMillis = Prelude.Nothing}
instance ToResourceProperties IntegrationOverridesProperty where
  toResourceProperties IntegrationOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.IntegrationOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "IntegrationMethod" Prelude.<$> integrationMethod,
                            (JSON..=) "PayloadFormatVersion" Prelude.<$> payloadFormatVersion,
                            (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis])}
instance JSON.ToJSON IntegrationOverridesProperty where
  toJSON IntegrationOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "IntegrationMethod" Prelude.<$> integrationMethod,
               (JSON..=) "PayloadFormatVersion" Prelude.<$> payloadFormatVersion,
               (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis]))
instance Property "Description" IntegrationOverridesProperty where
  type PropertyType "Description" IntegrationOverridesProperty = Value Prelude.Text
  set newValue IntegrationOverridesProperty {..}
    = IntegrationOverridesProperty
        {description = Prelude.pure newValue, ..}
instance Property "IntegrationMethod" IntegrationOverridesProperty where
  type PropertyType "IntegrationMethod" IntegrationOverridesProperty = Value Prelude.Text
  set newValue IntegrationOverridesProperty {..}
    = IntegrationOverridesProperty
        {integrationMethod = Prelude.pure newValue, ..}
instance Property "PayloadFormatVersion" IntegrationOverridesProperty where
  type PropertyType "PayloadFormatVersion" IntegrationOverridesProperty = Value Prelude.Text
  set newValue IntegrationOverridesProperty {..}
    = IntegrationOverridesProperty
        {payloadFormatVersion = Prelude.pure newValue, ..}
instance Property "TimeoutInMillis" IntegrationOverridesProperty where
  type PropertyType "TimeoutInMillis" IntegrationOverridesProperty = Value Prelude.Integer
  set newValue IntegrationOverridesProperty {..}
    = IntegrationOverridesProperty
        {timeoutInMillis = Prelude.pure newValue, ..}