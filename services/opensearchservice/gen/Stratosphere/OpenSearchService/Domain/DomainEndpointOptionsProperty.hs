module Stratosphere.OpenSearchService.Domain.DomainEndpointOptionsProperty (
        DomainEndpointOptionsProperty(..), mkDomainEndpointOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainEndpointOptionsProperty
  = DomainEndpointOptionsProperty {customEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                   customEndpointCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   customEndpointEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   enforceHTTPS :: (Prelude.Maybe (Value Prelude.Bool)),
                                   tLSSecurityPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainEndpointOptionsProperty :: DomainEndpointOptionsProperty
mkDomainEndpointOptionsProperty
  = DomainEndpointOptionsProperty
      {customEndpoint = Prelude.Nothing,
       customEndpointCertificateArn = Prelude.Nothing,
       customEndpointEnabled = Prelude.Nothing,
       enforceHTTPS = Prelude.Nothing,
       tLSSecurityPolicy = Prelude.Nothing}
instance ToResourceProperties DomainEndpointOptionsProperty where
  toResourceProperties DomainEndpointOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.DomainEndpointOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomEndpoint" Prelude.<$> customEndpoint,
                            (JSON..=) "CustomEndpointCertificateArn"
                              Prelude.<$> customEndpointCertificateArn,
                            (JSON..=) "CustomEndpointEnabled"
                              Prelude.<$> customEndpointEnabled,
                            (JSON..=) "EnforceHTTPS" Prelude.<$> enforceHTTPS,
                            (JSON..=) "TLSSecurityPolicy" Prelude.<$> tLSSecurityPolicy])}
instance JSON.ToJSON DomainEndpointOptionsProperty where
  toJSON DomainEndpointOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomEndpoint" Prelude.<$> customEndpoint,
               (JSON..=) "CustomEndpointCertificateArn"
                 Prelude.<$> customEndpointCertificateArn,
               (JSON..=) "CustomEndpointEnabled"
                 Prelude.<$> customEndpointEnabled,
               (JSON..=) "EnforceHTTPS" Prelude.<$> enforceHTTPS,
               (JSON..=) "TLSSecurityPolicy" Prelude.<$> tLSSecurityPolicy]))
instance Property "CustomEndpoint" DomainEndpointOptionsProperty where
  type PropertyType "CustomEndpoint" DomainEndpointOptionsProperty = Value Prelude.Text
  set newValue DomainEndpointOptionsProperty {..}
    = DomainEndpointOptionsProperty
        {customEndpoint = Prelude.pure newValue, ..}
instance Property "CustomEndpointCertificateArn" DomainEndpointOptionsProperty where
  type PropertyType "CustomEndpointCertificateArn" DomainEndpointOptionsProperty = Value Prelude.Text
  set newValue DomainEndpointOptionsProperty {..}
    = DomainEndpointOptionsProperty
        {customEndpointCertificateArn = Prelude.pure newValue, ..}
instance Property "CustomEndpointEnabled" DomainEndpointOptionsProperty where
  type PropertyType "CustomEndpointEnabled" DomainEndpointOptionsProperty = Value Prelude.Bool
  set newValue DomainEndpointOptionsProperty {..}
    = DomainEndpointOptionsProperty
        {customEndpointEnabled = Prelude.pure newValue, ..}
instance Property "EnforceHTTPS" DomainEndpointOptionsProperty where
  type PropertyType "EnforceHTTPS" DomainEndpointOptionsProperty = Value Prelude.Bool
  set newValue DomainEndpointOptionsProperty {..}
    = DomainEndpointOptionsProperty
        {enforceHTTPS = Prelude.pure newValue, ..}
instance Property "TLSSecurityPolicy" DomainEndpointOptionsProperty where
  type PropertyType "TLSSecurityPolicy" DomainEndpointOptionsProperty = Value Prelude.Text
  set newValue DomainEndpointOptionsProperty {..}
    = DomainEndpointOptionsProperty
        {tLSSecurityPolicy = Prelude.pure newValue, ..}