module Stratosphere.EC2.VerifiedAccessTrustProvider.NativeApplicationOidcOptionsProperty (
        NativeApplicationOidcOptionsProperty(..),
        mkNativeApplicationOidcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NativeApplicationOidcOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html>
    NativeApplicationOidcOptionsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-authorizationendpoint>
                                          authorizationEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-clientid>
                                          clientId :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-clientsecret>
                                          clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-issuer>
                                          issuer :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-publicsigningkeyendpoint>
                                          publicSigningKeyEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-scope>
                                          scope :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-tokenendpoint>
                                          tokenEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions-userinfoendpoint>
                                          userInfoEndpoint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNativeApplicationOidcOptionsProperty ::
  NativeApplicationOidcOptionsProperty
mkNativeApplicationOidcOptionsProperty
  = NativeApplicationOidcOptionsProperty
      {haddock_workaround_ = (), authorizationEndpoint = Prelude.Nothing,
       clientId = Prelude.Nothing, clientSecret = Prelude.Nothing,
       issuer = Prelude.Nothing,
       publicSigningKeyEndpoint = Prelude.Nothing,
       scope = Prelude.Nothing, tokenEndpoint = Prelude.Nothing,
       userInfoEndpoint = Prelude.Nothing}
instance ToResourceProperties NativeApplicationOidcOptionsProperty where
  toResourceProperties NativeApplicationOidcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessTrustProvider.NativeApplicationOidcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizationEndpoint"
                              Prelude.<$> authorizationEndpoint,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                            (JSON..=) "Issuer" Prelude.<$> issuer,
                            (JSON..=) "PublicSigningKeyEndpoint"
                              Prelude.<$> publicSigningKeyEndpoint,
                            (JSON..=) "Scope" Prelude.<$> scope,
                            (JSON..=) "TokenEndpoint" Prelude.<$> tokenEndpoint,
                            (JSON..=) "UserInfoEndpoint" Prelude.<$> userInfoEndpoint])}
instance JSON.ToJSON NativeApplicationOidcOptionsProperty where
  toJSON NativeApplicationOidcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizationEndpoint"
                 Prelude.<$> authorizationEndpoint,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
               (JSON..=) "Issuer" Prelude.<$> issuer,
               (JSON..=) "PublicSigningKeyEndpoint"
                 Prelude.<$> publicSigningKeyEndpoint,
               (JSON..=) "Scope" Prelude.<$> scope,
               (JSON..=) "TokenEndpoint" Prelude.<$> tokenEndpoint,
               (JSON..=) "UserInfoEndpoint" Prelude.<$> userInfoEndpoint]))
instance Property "AuthorizationEndpoint" NativeApplicationOidcOptionsProperty where
  type PropertyType "AuthorizationEndpoint" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {authorizationEndpoint = Prelude.pure newValue, ..}
instance Property "ClientId" NativeApplicationOidcOptionsProperty where
  type PropertyType "ClientId" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {clientId = Prelude.pure newValue, ..}
instance Property "ClientSecret" NativeApplicationOidcOptionsProperty where
  type PropertyType "ClientSecret" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {clientSecret = Prelude.pure newValue, ..}
instance Property "Issuer" NativeApplicationOidcOptionsProperty where
  type PropertyType "Issuer" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {issuer = Prelude.pure newValue, ..}
instance Property "PublicSigningKeyEndpoint" NativeApplicationOidcOptionsProperty where
  type PropertyType "PublicSigningKeyEndpoint" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {publicSigningKeyEndpoint = Prelude.pure newValue, ..}
instance Property "Scope" NativeApplicationOidcOptionsProperty where
  type PropertyType "Scope" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {scope = Prelude.pure newValue, ..}
instance Property "TokenEndpoint" NativeApplicationOidcOptionsProperty where
  type PropertyType "TokenEndpoint" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {tokenEndpoint = Prelude.pure newValue, ..}
instance Property "UserInfoEndpoint" NativeApplicationOidcOptionsProperty where
  type PropertyType "UserInfoEndpoint" NativeApplicationOidcOptionsProperty = Value Prelude.Text
  set newValue NativeApplicationOidcOptionsProperty {..}
    = NativeApplicationOidcOptionsProperty
        {userInfoEndpoint = Prelude.pure newValue, ..}