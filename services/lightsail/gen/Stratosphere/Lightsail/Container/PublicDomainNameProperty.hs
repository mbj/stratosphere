module Stratosphere.Lightsail.Container.PublicDomainNameProperty (
        PublicDomainNameProperty(..), mkPublicDomainNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicDomainNameProperty
  = PublicDomainNameProperty {certificateName :: (Prelude.Maybe (Value Prelude.Text)),
                              domainNames :: (Prelude.Maybe (ValueList Prelude.Text))}
mkPublicDomainNameProperty :: PublicDomainNameProperty
mkPublicDomainNameProperty
  = PublicDomainNameProperty
      {certificateName = Prelude.Nothing, domainNames = Prelude.Nothing}
instance ToResourceProperties PublicDomainNameProperty where
  toResourceProperties PublicDomainNameProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.PublicDomainName",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateName" Prelude.<$> certificateName,
                            (JSON..=) "DomainNames" Prelude.<$> domainNames])}
instance JSON.ToJSON PublicDomainNameProperty where
  toJSON PublicDomainNameProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateName" Prelude.<$> certificateName,
               (JSON..=) "DomainNames" Prelude.<$> domainNames]))
instance Property "CertificateName" PublicDomainNameProperty where
  type PropertyType "CertificateName" PublicDomainNameProperty = Value Prelude.Text
  set newValue PublicDomainNameProperty {..}
    = PublicDomainNameProperty
        {certificateName = Prelude.pure newValue, ..}
instance Property "DomainNames" PublicDomainNameProperty where
  type PropertyType "DomainNames" PublicDomainNameProperty = ValueList Prelude.Text
  set newValue PublicDomainNameProperty {..}
    = PublicDomainNameProperty
        {domainNames = Prelude.pure newValue, ..}