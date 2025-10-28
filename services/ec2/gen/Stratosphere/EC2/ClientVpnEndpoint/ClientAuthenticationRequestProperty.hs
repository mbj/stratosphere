module Stratosphere.EC2.ClientVpnEndpoint.ClientAuthenticationRequestProperty (
        module Exports, ClientAuthenticationRequestProperty(..),
        mkClientAuthenticationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.CertificateAuthenticationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.DirectoryServiceAuthenticationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.ClientVpnEndpoint.FederatedAuthenticationRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientAuthenticationRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html>
    ClientAuthenticationRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory>
                                         activeDirectory :: (Prelude.Maybe DirectoryServiceAuthenticationRequestProperty),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-federatedauthentication>
                                         federatedAuthentication :: (Prelude.Maybe FederatedAuthenticationRequestProperty),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication>
                                         mutualAuthentication :: (Prelude.Maybe CertificateAuthenticationRequestProperty),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type>
                                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientAuthenticationRequestProperty ::
  Value Prelude.Text -> ClientAuthenticationRequestProperty
mkClientAuthenticationRequestProperty type'
  = ClientAuthenticationRequestProperty
      {type' = type', activeDirectory = Prelude.Nothing,
       federatedAuthentication = Prelude.Nothing,
       mutualAuthentication = Prelude.Nothing}
instance ToResourceProperties ClientAuthenticationRequestProperty where
  toResourceProperties ClientAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ActiveDirectory" Prelude.<$> activeDirectory,
                               (JSON..=) "FederatedAuthentication"
                                 Prelude.<$> federatedAuthentication,
                               (JSON..=) "MutualAuthentication"
                                 Prelude.<$> mutualAuthentication]))}
instance JSON.ToJSON ClientAuthenticationRequestProperty where
  toJSON ClientAuthenticationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ActiveDirectory" Prelude.<$> activeDirectory,
                  (JSON..=) "FederatedAuthentication"
                    Prelude.<$> federatedAuthentication,
                  (JSON..=) "MutualAuthentication"
                    Prelude.<$> mutualAuthentication])))
instance Property "ActiveDirectory" ClientAuthenticationRequestProperty where
  type PropertyType "ActiveDirectory" ClientAuthenticationRequestProperty = DirectoryServiceAuthenticationRequestProperty
  set newValue ClientAuthenticationRequestProperty {..}
    = ClientAuthenticationRequestProperty
        {activeDirectory = Prelude.pure newValue, ..}
instance Property "FederatedAuthentication" ClientAuthenticationRequestProperty where
  type PropertyType "FederatedAuthentication" ClientAuthenticationRequestProperty = FederatedAuthenticationRequestProperty
  set newValue ClientAuthenticationRequestProperty {..}
    = ClientAuthenticationRequestProperty
        {federatedAuthentication = Prelude.pure newValue, ..}
instance Property "MutualAuthentication" ClientAuthenticationRequestProperty where
  type PropertyType "MutualAuthentication" ClientAuthenticationRequestProperty = CertificateAuthenticationRequestProperty
  set newValue ClientAuthenticationRequestProperty {..}
    = ClientAuthenticationRequestProperty
        {mutualAuthentication = Prelude.pure newValue, ..}
instance Property "Type" ClientAuthenticationRequestProperty where
  type PropertyType "Type" ClientAuthenticationRequestProperty = Value Prelude.Text
  set newValue ClientAuthenticationRequestProperty {..}
    = ClientAuthenticationRequestProperty {type' = newValue, ..}