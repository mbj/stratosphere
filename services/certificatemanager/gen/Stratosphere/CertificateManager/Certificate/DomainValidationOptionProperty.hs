module Stratosphere.CertificateManager.Certificate.DomainValidationOptionProperty (
        DomainValidationOptionProperty(..),
        mkDomainValidationOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainValidationOptionProperty
  = DomainValidationOptionProperty {domainName :: (Value Prelude.Text),
                                    hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                                    validationDomain :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainValidationOptionProperty ::
  Value Prelude.Text -> DomainValidationOptionProperty
mkDomainValidationOptionProperty domainName
  = DomainValidationOptionProperty
      {domainName = domainName, hostedZoneId = Prelude.Nothing,
       validationDomain = Prelude.Nothing}
instance ToResourceProperties DomainValidationOptionProperty where
  toResourceProperties DomainValidationOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CertificateManager::Certificate.DomainValidationOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                               (JSON..=) "ValidationDomain" Prelude.<$> validationDomain]))}
instance JSON.ToJSON DomainValidationOptionProperty where
  toJSON DomainValidationOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                  (JSON..=) "ValidationDomain" Prelude.<$> validationDomain])))
instance Property "DomainName" DomainValidationOptionProperty where
  type PropertyType "DomainName" DomainValidationOptionProperty = Value Prelude.Text
  set newValue DomainValidationOptionProperty {..}
    = DomainValidationOptionProperty {domainName = newValue, ..}
instance Property "HostedZoneId" DomainValidationOptionProperty where
  type PropertyType "HostedZoneId" DomainValidationOptionProperty = Value Prelude.Text
  set newValue DomainValidationOptionProperty {..}
    = DomainValidationOptionProperty
        {hostedZoneId = Prelude.pure newValue, ..}
instance Property "ValidationDomain" DomainValidationOptionProperty where
  type PropertyType "ValidationDomain" DomainValidationOptionProperty = Value Prelude.Text
  set newValue DomainValidationOptionProperty {..}
    = DomainValidationOptionProperty
        {validationDomain = Prelude.pure newValue, ..}