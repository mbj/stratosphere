module Stratosphere.Lightsail.LoadBalancerTlsCertificate (
        LoadBalancerTlsCertificate(..), mkLoadBalancerTlsCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerTlsCertificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html>
    LoadBalancerTlsCertificate {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-certificatealternativenames>
                                certificateAlternativeNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-certificatedomainname>
                                certificateDomainName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-certificatename>
                                certificateName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-httpsredirectionenabled>
                                httpsRedirectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-isattached>
                                isAttached :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancertlscertificate.html#cfn-lightsail-loadbalancertlscertificate-loadbalancername>
                                loadBalancerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancerTlsCertificate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LoadBalancerTlsCertificate
mkLoadBalancerTlsCertificate
  certificateDomainName
  certificateName
  loadBalancerName
  = LoadBalancerTlsCertificate
      {haddock_workaround_ = (),
       certificateDomainName = certificateDomainName,
       certificateName = certificateName,
       loadBalancerName = loadBalancerName,
       certificateAlternativeNames = Prelude.Nothing,
       httpsRedirectionEnabled = Prelude.Nothing,
       isAttached = Prelude.Nothing}
instance ToResourceProperties LoadBalancerTlsCertificate where
  toResourceProperties LoadBalancerTlsCertificate {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::LoadBalancerTlsCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateDomainName" JSON..= certificateDomainName,
                            "CertificateName" JSON..= certificateName,
                            "LoadBalancerName" JSON..= loadBalancerName]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateAlternativeNames"
                                 Prelude.<$> certificateAlternativeNames,
                               (JSON..=) "HttpsRedirectionEnabled"
                                 Prelude.<$> httpsRedirectionEnabled,
                               (JSON..=) "IsAttached" Prelude.<$> isAttached]))}
instance JSON.ToJSON LoadBalancerTlsCertificate where
  toJSON LoadBalancerTlsCertificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateDomainName" JSON..= certificateDomainName,
               "CertificateName" JSON..= certificateName,
               "LoadBalancerName" JSON..= loadBalancerName]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateAlternativeNames"
                    Prelude.<$> certificateAlternativeNames,
                  (JSON..=) "HttpsRedirectionEnabled"
                    Prelude.<$> httpsRedirectionEnabled,
                  (JSON..=) "IsAttached" Prelude.<$> isAttached])))
instance Property "CertificateAlternativeNames" LoadBalancerTlsCertificate where
  type PropertyType "CertificateAlternativeNames" LoadBalancerTlsCertificate = ValueList Prelude.Text
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate
        {certificateAlternativeNames = Prelude.pure newValue, ..}
instance Property "CertificateDomainName" LoadBalancerTlsCertificate where
  type PropertyType "CertificateDomainName" LoadBalancerTlsCertificate = Value Prelude.Text
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate {certificateDomainName = newValue, ..}
instance Property "CertificateName" LoadBalancerTlsCertificate where
  type PropertyType "CertificateName" LoadBalancerTlsCertificate = Value Prelude.Text
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate {certificateName = newValue, ..}
instance Property "HttpsRedirectionEnabled" LoadBalancerTlsCertificate where
  type PropertyType "HttpsRedirectionEnabled" LoadBalancerTlsCertificate = Value Prelude.Bool
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate
        {httpsRedirectionEnabled = Prelude.pure newValue, ..}
instance Property "IsAttached" LoadBalancerTlsCertificate where
  type PropertyType "IsAttached" LoadBalancerTlsCertificate = Value Prelude.Bool
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate
        {isAttached = Prelude.pure newValue, ..}
instance Property "LoadBalancerName" LoadBalancerTlsCertificate where
  type PropertyType "LoadBalancerName" LoadBalancerTlsCertificate = Value Prelude.Text
  set newValue LoadBalancerTlsCertificate {..}
    = LoadBalancerTlsCertificate {loadBalancerName = newValue, ..}