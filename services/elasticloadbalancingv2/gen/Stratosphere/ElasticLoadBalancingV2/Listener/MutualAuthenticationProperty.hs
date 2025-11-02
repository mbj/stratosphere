module Stratosphere.ElasticLoadBalancingV2.Listener.MutualAuthenticationProperty (
        MutualAuthenticationProperty(..), mkMutualAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MutualAuthenticationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-mutualauthentication.html>
    MutualAuthenticationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-mutualauthentication.html#cfn-elasticloadbalancingv2-listener-mutualauthentication-advertisetruststorecanames>
                                  advertiseTrustStoreCaNames :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-mutualauthentication.html#cfn-elasticloadbalancingv2-listener-mutualauthentication-ignoreclientcertificateexpiry>
                                  ignoreClientCertificateExpiry :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-mutualauthentication.html#cfn-elasticloadbalancingv2-listener-mutualauthentication-mode>
                                  mode :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-mutualauthentication.html#cfn-elasticloadbalancingv2-listener-mutualauthentication-truststorearn>
                                  trustStoreArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMutualAuthenticationProperty :: MutualAuthenticationProperty
mkMutualAuthenticationProperty
  = MutualAuthenticationProperty
      {haddock_workaround_ = (),
       advertiseTrustStoreCaNames = Prelude.Nothing,
       ignoreClientCertificateExpiry = Prelude.Nothing,
       mode = Prelude.Nothing, trustStoreArn = Prelude.Nothing}
instance ToResourceProperties MutualAuthenticationProperty where
  toResourceProperties MutualAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.MutualAuthentication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdvertiseTrustStoreCaNames"
                              Prelude.<$> advertiseTrustStoreCaNames,
                            (JSON..=) "IgnoreClientCertificateExpiry"
                              Prelude.<$> ignoreClientCertificateExpiry,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn])}
instance JSON.ToJSON MutualAuthenticationProperty where
  toJSON MutualAuthenticationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdvertiseTrustStoreCaNames"
                 Prelude.<$> advertiseTrustStoreCaNames,
               (JSON..=) "IgnoreClientCertificateExpiry"
                 Prelude.<$> ignoreClientCertificateExpiry,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "TrustStoreArn" Prelude.<$> trustStoreArn]))
instance Property "AdvertiseTrustStoreCaNames" MutualAuthenticationProperty where
  type PropertyType "AdvertiseTrustStoreCaNames" MutualAuthenticationProperty = Value Prelude.Text
  set newValue MutualAuthenticationProperty {..}
    = MutualAuthenticationProperty
        {advertiseTrustStoreCaNames = Prelude.pure newValue, ..}
instance Property "IgnoreClientCertificateExpiry" MutualAuthenticationProperty where
  type PropertyType "IgnoreClientCertificateExpiry" MutualAuthenticationProperty = Value Prelude.Bool
  set newValue MutualAuthenticationProperty {..}
    = MutualAuthenticationProperty
        {ignoreClientCertificateExpiry = Prelude.pure newValue, ..}
instance Property "Mode" MutualAuthenticationProperty where
  type PropertyType "Mode" MutualAuthenticationProperty = Value Prelude.Text
  set newValue MutualAuthenticationProperty {..}
    = MutualAuthenticationProperty {mode = Prelude.pure newValue, ..}
instance Property "TrustStoreArn" MutualAuthenticationProperty where
  type PropertyType "TrustStoreArn" MutualAuthenticationProperty = Value Prelude.Text
  set newValue MutualAuthenticationProperty {..}
    = MutualAuthenticationProperty
        {trustStoreArn = Prelude.pure newValue, ..}