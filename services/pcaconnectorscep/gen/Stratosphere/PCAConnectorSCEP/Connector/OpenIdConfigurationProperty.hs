module Stratosphere.PCAConnectorSCEP.Connector.OpenIdConfigurationProperty (
        OpenIdConfigurationProperty(..), mkOpenIdConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIdConfigurationProperty
  = OpenIdConfigurationProperty {audience :: (Prelude.Maybe (Value Prelude.Text)),
                                 issuer :: (Prelude.Maybe (Value Prelude.Text)),
                                 subject :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConfigurationProperty :: OpenIdConfigurationProperty
mkOpenIdConfigurationProperty
  = OpenIdConfigurationProperty
      {audience = Prelude.Nothing, issuer = Prelude.Nothing,
       subject = Prelude.Nothing}
instance ToResourceProperties OpenIdConfigurationProperty where
  toResourceProperties OpenIdConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorSCEP::Connector.OpenIdConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audience" Prelude.<$> audience,
                            (JSON..=) "Issuer" Prelude.<$> issuer,
                            (JSON..=) "Subject" Prelude.<$> subject])}
instance JSON.ToJSON OpenIdConfigurationProperty where
  toJSON OpenIdConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audience" Prelude.<$> audience,
               (JSON..=) "Issuer" Prelude.<$> issuer,
               (JSON..=) "Subject" Prelude.<$> subject]))
instance Property "Audience" OpenIdConfigurationProperty where
  type PropertyType "Audience" OpenIdConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConfigurationProperty {..}
    = OpenIdConfigurationProperty
        {audience = Prelude.pure newValue, ..}
instance Property "Issuer" OpenIdConfigurationProperty where
  type PropertyType "Issuer" OpenIdConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConfigurationProperty {..}
    = OpenIdConfigurationProperty {issuer = Prelude.pure newValue, ..}
instance Property "Subject" OpenIdConfigurationProperty where
  type PropertyType "Subject" OpenIdConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConfigurationProperty {..}
    = OpenIdConfigurationProperty {subject = Prelude.pure newValue, ..}