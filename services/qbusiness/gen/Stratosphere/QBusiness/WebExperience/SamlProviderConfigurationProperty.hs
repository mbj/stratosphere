module Stratosphere.QBusiness.WebExperience.SamlProviderConfigurationProperty (
        SamlProviderConfigurationProperty(..),
        mkSamlProviderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamlProviderConfigurationProperty
  = SamlProviderConfigurationProperty {authenticationUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSamlProviderConfigurationProperty ::
  Value Prelude.Text -> SamlProviderConfigurationProperty
mkSamlProviderConfigurationProperty authenticationUrl
  = SamlProviderConfigurationProperty
      {authenticationUrl = authenticationUrl}
instance ToResourceProperties SamlProviderConfigurationProperty where
  toResourceProperties SamlProviderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience.SamlProviderConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthenticationUrl" JSON..= authenticationUrl]}
instance JSON.ToJSON SamlProviderConfigurationProperty where
  toJSON SamlProviderConfigurationProperty {..}
    = JSON.object ["AuthenticationUrl" JSON..= authenticationUrl]
instance Property "AuthenticationUrl" SamlProviderConfigurationProperty where
  type PropertyType "AuthenticationUrl" SamlProviderConfigurationProperty = Value Prelude.Text
  set newValue SamlProviderConfigurationProperty {}
    = SamlProviderConfigurationProperty
        {authenticationUrl = newValue, ..}