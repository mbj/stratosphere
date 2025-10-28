module Stratosphere.SES.EmailIdentity.DkimSigningAttributesProperty (
        DkimSigningAttributesProperty(..), mkDkimSigningAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DkimSigningAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-dkimsigningattributes.html>
    DkimSigningAttributesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-dkimsigningattributes.html#cfn-ses-emailidentity-dkimsigningattributes-domainsigningprivatekey>
                                   domainSigningPrivateKey :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-dkimsigningattributes.html#cfn-ses-emailidentity-dkimsigningattributes-domainsigningselector>
                                   domainSigningSelector :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-dkimsigningattributes.html#cfn-ses-emailidentity-dkimsigningattributes-nextsigningkeylength>
                                   nextSigningKeyLength :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDkimSigningAttributesProperty :: DkimSigningAttributesProperty
mkDkimSigningAttributesProperty
  = DkimSigningAttributesProperty
      {haddock_workaround_ = (),
       domainSigningPrivateKey = Prelude.Nothing,
       domainSigningSelector = Prelude.Nothing,
       nextSigningKeyLength = Prelude.Nothing}
instance ToResourceProperties DkimSigningAttributesProperty where
  toResourceProperties DkimSigningAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.DkimSigningAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainSigningPrivateKey"
                              Prelude.<$> domainSigningPrivateKey,
                            (JSON..=) "DomainSigningSelector"
                              Prelude.<$> domainSigningSelector,
                            (JSON..=) "NextSigningKeyLength"
                              Prelude.<$> nextSigningKeyLength])}
instance JSON.ToJSON DkimSigningAttributesProperty where
  toJSON DkimSigningAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainSigningPrivateKey"
                 Prelude.<$> domainSigningPrivateKey,
               (JSON..=) "DomainSigningSelector"
                 Prelude.<$> domainSigningSelector,
               (JSON..=) "NextSigningKeyLength"
                 Prelude.<$> nextSigningKeyLength]))
instance Property "DomainSigningPrivateKey" DkimSigningAttributesProperty where
  type PropertyType "DomainSigningPrivateKey" DkimSigningAttributesProperty = Value Prelude.Text
  set newValue DkimSigningAttributesProperty {..}
    = DkimSigningAttributesProperty
        {domainSigningPrivateKey = Prelude.pure newValue, ..}
instance Property "DomainSigningSelector" DkimSigningAttributesProperty where
  type PropertyType "DomainSigningSelector" DkimSigningAttributesProperty = Value Prelude.Text
  set newValue DkimSigningAttributesProperty {..}
    = DkimSigningAttributesProperty
        {domainSigningSelector = Prelude.pure newValue, ..}
instance Property "NextSigningKeyLength" DkimSigningAttributesProperty where
  type PropertyType "NextSigningKeyLength" DkimSigningAttributesProperty = Value Prelude.Text
  set newValue DkimSigningAttributesProperty {..}
    = DkimSigningAttributesProperty
        {nextSigningKeyLength = Prelude.pure newValue, ..}