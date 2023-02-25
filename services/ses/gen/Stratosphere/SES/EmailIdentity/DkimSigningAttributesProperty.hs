module Stratosphere.SES.EmailIdentity.DkimSigningAttributesProperty (
        DkimSigningAttributesProperty(..), mkDkimSigningAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DkimSigningAttributesProperty
  = DkimSigningAttributesProperty {domainSigningPrivateKey :: (Prelude.Maybe (Value Prelude.Text)),
                                   domainSigningSelector :: (Prelude.Maybe (Value Prelude.Text)),
                                   nextSigningKeyLength :: (Prelude.Maybe (Value Prelude.Text))}
mkDkimSigningAttributesProperty :: DkimSigningAttributesProperty
mkDkimSigningAttributesProperty
  = DkimSigningAttributesProperty
      {domainSigningPrivateKey = Prelude.Nothing,
       domainSigningSelector = Prelude.Nothing,
       nextSigningKeyLength = Prelude.Nothing}
instance ToResourceProperties DkimSigningAttributesProperty where
  toResourceProperties DkimSigningAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.DkimSigningAttributes",
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