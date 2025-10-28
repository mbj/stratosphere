module Stratosphere.ApiGatewayV2.DomainName.MutualTlsAuthenticationProperty (
        MutualTlsAuthenticationProperty(..),
        mkMutualTlsAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MutualTlsAuthenticationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html>
    MutualTlsAuthenticationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html#cfn-apigatewayv2-domainname-mutualtlsauthentication-truststoreuri>
                                     truststoreUri :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html#cfn-apigatewayv2-domainname-mutualtlsauthentication-truststoreversion>
                                     truststoreVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMutualTlsAuthenticationProperty ::
  MutualTlsAuthenticationProperty
mkMutualTlsAuthenticationProperty
  = MutualTlsAuthenticationProperty
      {haddock_workaround_ = (), truststoreUri = Prelude.Nothing,
       truststoreVersion = Prelude.Nothing}
instance ToResourceProperties MutualTlsAuthenticationProperty where
  toResourceProperties MutualTlsAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::DomainName.MutualTlsAuthentication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TruststoreUri" Prelude.<$> truststoreUri,
                            (JSON..=) "TruststoreVersion" Prelude.<$> truststoreVersion])}
instance JSON.ToJSON MutualTlsAuthenticationProperty where
  toJSON MutualTlsAuthenticationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TruststoreUri" Prelude.<$> truststoreUri,
               (JSON..=) "TruststoreVersion" Prelude.<$> truststoreVersion]))
instance Property "TruststoreUri" MutualTlsAuthenticationProperty where
  type PropertyType "TruststoreUri" MutualTlsAuthenticationProperty = Value Prelude.Text
  set newValue MutualTlsAuthenticationProperty {..}
    = MutualTlsAuthenticationProperty
        {truststoreUri = Prelude.pure newValue, ..}
instance Property "TruststoreVersion" MutualTlsAuthenticationProperty where
  type PropertyType "TruststoreVersion" MutualTlsAuthenticationProperty = Value Prelude.Text
  set newValue MutualTlsAuthenticationProperty {..}
    = MutualTlsAuthenticationProperty
        {truststoreVersion = Prelude.pure newValue, ..}