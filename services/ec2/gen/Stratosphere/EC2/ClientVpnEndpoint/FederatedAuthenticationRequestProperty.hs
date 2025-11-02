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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-federatedauthenticationrequest.html>
    FederatedAuthenticationRequestProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-federatedauthenticationrequest.html#cfn-ec2-clientvpnendpoint-federatedauthenticationrequest-samlproviderarn>
                                            sAMLProviderArn :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-federatedauthenticationrequest.html#cfn-ec2-clientvpnendpoint-federatedauthenticationrequest-selfservicesamlproviderarn>
                                            selfServiceSAMLProviderArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFederatedAuthenticationRequestProperty ::
  Value Prelude.Text -> FederatedAuthenticationRequestProperty
mkFederatedAuthenticationRequestProperty sAMLProviderArn
  = FederatedAuthenticationRequestProperty
      {haddock_workaround_ = (), sAMLProviderArn = sAMLProviderArn,
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