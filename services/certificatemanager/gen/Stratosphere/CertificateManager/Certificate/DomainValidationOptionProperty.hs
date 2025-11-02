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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html>
    DomainValidationOptionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname>
                                    domainName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-hostedzoneid>
                                    hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain>
                                    validationDomain :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainValidationOptionProperty ::
  Value Prelude.Text -> DomainValidationOptionProperty
mkDomainValidationOptionProperty domainName
  = DomainValidationOptionProperty
      {haddock_workaround_ = (), domainName = domainName,
       hostedZoneId = Prelude.Nothing, validationDomain = Prelude.Nothing}
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