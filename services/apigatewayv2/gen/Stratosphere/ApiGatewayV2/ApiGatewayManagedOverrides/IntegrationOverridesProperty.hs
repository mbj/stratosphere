module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.IntegrationOverridesProperty (
        IntegrationOverridesProperty(..), mkIntegrationOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationOverridesProperty
  = IntegrationOverridesProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                                  integrationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                                  payloadFormatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                  timeoutInMillis :: (Prelude.Maybe (Value Prelude.Integer))}
mkIntegrationOverridesProperty :: IntegrationOverridesProperty
mkIntegrationOverridesProperty
  = IntegrationOverridesProperty
      {description = Prelude.Nothing,
       integrationMethod = Prelude.Nothing,
       payloadFormatVersion = Prelude.Nothing,
       timeoutInMillis = Prelude.Nothing}
instance ToResourceProperties IntegrationOverridesProperty where
  toResourceProperties IntegrationOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.IntegrationOverrides",
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