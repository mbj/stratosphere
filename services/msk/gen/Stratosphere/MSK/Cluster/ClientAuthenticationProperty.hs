module Stratosphere.MSK.Cluster.ClientAuthenticationProperty (
        module Exports, ClientAuthenticationProperty(..),
        mkClientAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.SaslProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.TlsProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.UnauthenticatedProperty as Exports
import Stratosphere.ResourceProperties
data ClientAuthenticationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html>
    ClientAuthenticationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-sasl>
                                  sasl :: (Prelude.Maybe SaslProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-tls>
                                  tls :: (Prelude.Maybe TlsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-unauthenticated>
                                  unauthenticated :: (Prelude.Maybe UnauthenticatedProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientAuthenticationProperty :: ClientAuthenticationProperty
mkClientAuthenticationProperty
  = ClientAuthenticationProperty
      {haddock_workaround_ = (), sasl = Prelude.Nothing,
       tls = Prelude.Nothing, unauthenticated = Prelude.Nothing}
instance ToResourceProperties ClientAuthenticationProperty where
  toResourceProperties ClientAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.ClientAuthentication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Sasl" Prelude.<$> sasl,
                            (JSON..=) "Tls" Prelude.<$> tls,
                            (JSON..=) "Unauthenticated" Prelude.<$> unauthenticated])}
instance JSON.ToJSON ClientAuthenticationProperty where
  toJSON ClientAuthenticationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Sasl" Prelude.<$> sasl,
               (JSON..=) "Tls" Prelude.<$> tls,
               (JSON..=) "Unauthenticated" Prelude.<$> unauthenticated]))
instance Property "Sasl" ClientAuthenticationProperty where
  type PropertyType "Sasl" ClientAuthenticationProperty = SaslProperty
  set newValue ClientAuthenticationProperty {..}
    = ClientAuthenticationProperty {sasl = Prelude.pure newValue, ..}
instance Property "Tls" ClientAuthenticationProperty where
  type PropertyType "Tls" ClientAuthenticationProperty = TlsProperty
  set newValue ClientAuthenticationProperty {..}
    = ClientAuthenticationProperty {tls = Prelude.pure newValue, ..}
instance Property "Unauthenticated" ClientAuthenticationProperty where
  type PropertyType "Unauthenticated" ClientAuthenticationProperty = UnauthenticatedProperty
  set newValue ClientAuthenticationProperty {..}
    = ClientAuthenticationProperty
        {unauthenticated = Prelude.pure newValue, ..}