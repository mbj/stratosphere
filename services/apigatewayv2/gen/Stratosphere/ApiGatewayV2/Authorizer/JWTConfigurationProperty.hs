module Stratosphere.ApiGatewayV2.Authorizer.JWTConfigurationProperty (
        JWTConfigurationProperty(..), mkJWTConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JWTConfigurationProperty
  = JWTConfigurationProperty {audience :: (Prelude.Maybe (ValueList Prelude.Text)),
                              issuer :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJWTConfigurationProperty :: JWTConfigurationProperty
mkJWTConfigurationProperty
  = JWTConfigurationProperty
      {audience = Prelude.Nothing, issuer = Prelude.Nothing}
instance ToResourceProperties JWTConfigurationProperty where
  toResourceProperties JWTConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Authorizer.JWTConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audience" Prelude.<$> audience,
                            (JSON..=) "Issuer" Prelude.<$> issuer])}
instance JSON.ToJSON JWTConfigurationProperty where
  toJSON JWTConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audience" Prelude.<$> audience,
               (JSON..=) "Issuer" Prelude.<$> issuer]))
instance Property "Audience" JWTConfigurationProperty where
  type PropertyType "Audience" JWTConfigurationProperty = ValueList Prelude.Text
  set newValue JWTConfigurationProperty {..}
    = JWTConfigurationProperty {audience = Prelude.pure newValue, ..}
instance Property "Issuer" JWTConfigurationProperty where
  type PropertyType "Issuer" JWTConfigurationProperty = Value Prelude.Text
  set newValue JWTConfigurationProperty {..}
    = JWTConfigurationProperty {issuer = Prelude.pure newValue, ..}