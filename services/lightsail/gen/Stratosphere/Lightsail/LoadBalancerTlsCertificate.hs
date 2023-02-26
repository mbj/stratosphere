module Stratosphere.Lightsail.LoadBalancerTlsCertificate (
        LoadBalancerTlsCertificate(..), mkLoadBalancerTlsCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerTlsCertificate
  = LoadBalancerTlsCertificate {certificateAlternativeNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                certificateDomainName :: (Value Prelude.Text),
                                certificateName :: (Value Prelude.Text),
                                httpsRedirectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                isAttached :: (Prelude.Maybe (Value Prelude.Bool)),
                                loadBalancerName :: (Value Prelude.Text)}
mkLoadBalancerTlsCertificate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LoadBalancerTlsCertificate
mkLoadBalancerTlsCertificate
  certificateDomainName
  certificateName
  loadBalancerName
  = LoadBalancerTlsCertificate
      {certificateDomainName = certificateDomainName,
       certificateName = certificateName,
       loadBalancerName = loadBalancerName,
       certificateAlternativeNames = Prelude.Nothing,
       httpsRedirectionEnabled = Prelude.Nothing,
       isAttached = Prelude.Nothing}
instance ToResourceProperties LoadBalancerTlsCertificate where
  toResourceProperties LoadBalancerTlsCertificate {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::LoadBalancerTlsCertificate",
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