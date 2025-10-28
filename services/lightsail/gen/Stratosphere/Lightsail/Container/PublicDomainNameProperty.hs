module Stratosphere.Lightsail.Container.PublicDomainNameProperty (
        PublicDomainNameProperty(..), mkPublicDomainNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicDomainNameProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicdomainname.html>
    PublicDomainNameProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicdomainname.html#cfn-lightsail-container-publicdomainname-certificatename>
                              certificateName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicdomainname.html#cfn-lightsail-container-publicdomainname-domainnames>
                              domainNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicDomainNameProperty :: PublicDomainNameProperty
mkPublicDomainNameProperty
  = PublicDomainNameProperty
      {haddock_workaround_ = (), certificateName = Prelude.Nothing,
       domainNames = Prelude.Nothing}
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