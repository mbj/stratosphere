module Stratosphere.EC2.ClientVpnEndpoint.FederatedAuthenticationRequestProperty (
        FederatedAuthenticationRequestProperty(..),
        mkFederatedAuthenticationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FederatedAuthenticationRequestProperty
  = FederatedAuthenticationRequestProperty {sAMLProviderArn :: (Value Prelude.Text),
                                            selfServiceSAMLProviderArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFederatedAuthenticationRequestProperty ::
  Value Prelude.Text -> FederatedAuthenticationRequestProperty
mkFederatedAuthenticationRequestProperty sAMLProviderArn
  = FederatedAuthenticationRequestProperty
      {sAMLProviderArn = sAMLProviderArn,
       selfServiceSAMLProviderArn = Prelude.Nothing}
instance ToResourceProperties FederatedAuthenticationRequestProperty where
  toResourceProperties FederatedAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.FederatedAuthenticationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SAMLProviderArn" JSON..= sAMLProviderArn]
                           (Prelude.catMaybes
                              [(JSON..=) "SelfServiceSAMLProviderArn"
                                 Prelude.<$> selfServiceSAMLProviderArn]))}
instance JSON.ToJSON FederatedAuthenticationRequestProperty where
  toJSON FederatedAuthenticationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SAMLProviderArn" JSON..= sAMLProviderArn]
              (Prelude.catMaybes
                 [(JSON..=) "SelfServiceSAMLProviderArn"
                    Prelude.<$> selfServiceSAMLProviderArn])))
instance Property "SAMLProviderArn" FederatedAuthenticationRequestProperty where
  type PropertyType "SAMLProviderArn" FederatedAuthenticationRequestProperty = Value Prelude.Text
  set newValue FederatedAuthenticationRequestProperty {..}
    = FederatedAuthenticationRequestProperty
        {sAMLProviderArn = newValue, ..}
instance Property "SelfServiceSAMLProviderArn" FederatedAuthenticationRequestProperty where
  type PropertyType "SelfServiceSAMLProviderArn" FederatedAuthenticationRequestProperty = Value Prelude.Text
  set newValue FederatedAuthenticationRequestProperty {..}
    = FederatedAuthenticationRequestProperty
        {selfServiceSAMLProviderArn = Prelude.pure newValue, ..}