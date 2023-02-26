module Stratosphere.Lightsail.Certificate (
        Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Certificate
  = Certificate {certificateName :: (Value Prelude.Text),
                 domainName :: (Value Prelude.Text),
                 subjectAlternativeNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
mkCertificate ::
  Value Prelude.Text -> Value Prelude.Text -> Certificate
mkCertificate certificateName domainName
  = Certificate
      {certificateName = certificateName, domainName = domainName,
       subjectAlternativeNames = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Certificate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateName" JSON..= certificateName,
                            "DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateName" JSON..= certificateName,
               "DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CertificateName" Certificate where
  type PropertyType "CertificateName" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateName = newValue, ..}
instance Property "DomainName" Certificate where
  type PropertyType "DomainName" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {domainName = newValue, ..}
instance Property "SubjectAlternativeNames" Certificate where
  type PropertyType "SubjectAlternativeNames" Certificate = ValueList Prelude.Text
  set newValue Certificate {..}
    = Certificate {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Tags" Certificate where
  type PropertyType "Tags" Certificate = [Tag]
  set newValue Certificate {..}
    = Certificate {tags = Prelude.pure newValue, ..}