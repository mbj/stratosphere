module Stratosphere.EC2.VerifiedAccessTrustProvider.OidcOptionsProperty (
        OidcOptionsProperty(..), mkOidcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OidcOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html>
    OidcOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-authorizationendpoint>
                         authorizationEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-clientid>
                         clientId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-clientsecret>
                         clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-issuer>
                         issuer :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-scope>
                         scope :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-tokenendpoint>
                         tokenEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-oidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions-userinfoendpoint>
                         userInfoEndpoint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOidcOptionsProperty :: OidcOptionsProperty
mkOidcOptionsProperty
  = OidcOptionsProperty
      {haddock_workaround_ = (), authorizationEndpoint = Prelude.Nothing,
       clientId = Prelude.Nothing, clientSecret = Prelude.Nothing,
       issuer = Prelude.Nothing, scope = Prelude.Nothing,
       tokenEndpoint = Prelude.Nothing,
       userInfoEndpoint = Prelude.Nothing}
instance ToResourceProperties OidcOptionsProperty where
  toResourceProperties OidcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessTrustProvider.OidcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizationEndpoint"
                              Prelude.<$> authorizationEndpoint,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                            (JSON..=) "Issuer" Prelude.<$> issuer,
                            (JSON..=) "Scope" Prelude.<$> scope,
                            (JSON..=) "TokenEndpoint" Prelude.<$> tokenEndpoint,
                            (JSON..=) "UserInfoEndpoint" Prelude.<$> userInfoEndpoint])}
instance JSON.ToJSON OidcOptionsProperty where
  toJSON OidcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizationEndpoint"
                 Prelude.<$> authorizationEndpoint,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
               (JSON..=) "Issuer" Prelude.<$> issuer,
               (JSON..=) "Scope" Prelude.<$> scope,
               (JSON..=) "TokenEndpoint" Prelude.<$> tokenEndpoint,
               (JSON..=) "UserInfoEndpoint" Prelude.<$> userInfoEndpoint]))
instance Property "AuthorizationEndpoint" OidcOptionsProperty where
  type PropertyType "AuthorizationEndpoint" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty
        {authorizationEndpoint = Prelude.pure newValue, ..}
instance Property "ClientId" OidcOptionsProperty where
  type PropertyType "ClientId" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty {clientId = Prelude.pure newValue, ..}
instance Property "ClientSecret" OidcOptionsProperty where
  type PropertyType "ClientSecret" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty {clientSecret = Prelude.pure newValue, ..}
instance Property "Issuer" OidcOptionsProperty where
  type PropertyType "Issuer" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty {issuer = Prelude.pure newValue, ..}
instance Property "Scope" OidcOptionsProperty where
  type PropertyType "Scope" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty {scope = Prelude.pure newValue, ..}
instance Property "TokenEndpoint" OidcOptionsProperty where
  type PropertyType "TokenEndpoint" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty {tokenEndpoint = Prelude.pure newValue, ..}
instance Property "UserInfoEndpoint" OidcOptionsProperty where
  type PropertyType "UserInfoEndpoint" OidcOptionsProperty = Value Prelude.Text
  set newValue OidcOptionsProperty {..}
    = OidcOptionsProperty
        {userInfoEndpoint = Prelude.pure newValue, ..}