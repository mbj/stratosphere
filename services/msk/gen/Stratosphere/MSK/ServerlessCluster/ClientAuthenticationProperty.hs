module Stratosphere.MSK.ServerlessCluster.ClientAuthenticationProperty (
        module Exports, ClientAuthenticationProperty(..),
        mkClientAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.SaslProperty as Exports
import Stratosphere.ResourceProperties
data ClientAuthenticationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-serverlesscluster-clientauthentication.html>
    ClientAuthenticationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-serverlesscluster-clientauthentication.html#cfn-msk-serverlesscluster-clientauthentication-sasl>
                                  sasl :: SaslProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientAuthenticationProperty ::
  SaslProperty -> ClientAuthenticationProperty
mkClientAuthenticationProperty sasl
  = ClientAuthenticationProperty
      {haddock_workaround_ = (), sasl = sasl}
instance ToResourceProperties ClientAuthenticationProperty where
  toResourceProperties ClientAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster.ClientAuthentication",
         supportsTags = Prelude.False, properties = ["Sasl" JSON..= sasl]}
instance JSON.ToJSON ClientAuthenticationProperty where
  toJSON ClientAuthenticationProperty {..}
    = JSON.object ["Sasl" JSON..= sasl]
instance Property "Sasl" ClientAuthenticationProperty where
  type PropertyType "Sasl" ClientAuthenticationProperty = SaslProperty
  set newValue ClientAuthenticationProperty {..}
    = ClientAuthenticationProperty {sasl = newValue, ..}