module Stratosphere.ACMPCA.CertificateAuthority.AccessMethodProperty (
        AccessMethodProperty(..), mkAccessMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessMethodProperty
  = AccessMethodProperty {accessMethodType :: (Prelude.Maybe (Value Prelude.Text)),
                          customObjectIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
mkAccessMethodProperty :: AccessMethodProperty
mkAccessMethodProperty
  = AccessMethodProperty
      {accessMethodType = Prelude.Nothing,
       customObjectIdentifier = Prelude.Nothing}
instance ToResourceProperties AccessMethodProperty where
  toResourceProperties AccessMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.AccessMethod",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessMethodType" Prelude.<$> accessMethodType,
                            (JSON..=) "CustomObjectIdentifier"
                              Prelude.<$> customObjectIdentifier])}
instance JSON.ToJSON AccessMethodProperty where
  toJSON AccessMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessMethodType" Prelude.<$> accessMethodType,
               (JSON..=) "CustomObjectIdentifier"
                 Prelude.<$> customObjectIdentifier]))
instance Property "AccessMethodType" AccessMethodProperty where
  type PropertyType "AccessMethodType" AccessMethodProperty = Value Prelude.Text
  set newValue AccessMethodProperty {..}
    = AccessMethodProperty
        {accessMethodType = Prelude.pure newValue, ..}
instance Property "CustomObjectIdentifier" AccessMethodProperty where
  type PropertyType "CustomObjectIdentifier" AccessMethodProperty = Value Prelude.Text
  set newValue AccessMethodProperty {..}
    = AccessMethodProperty
        {customObjectIdentifier = Prelude.pure newValue, ..}