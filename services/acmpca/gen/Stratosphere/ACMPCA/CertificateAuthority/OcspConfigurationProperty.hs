module Stratosphere.ACMPCA.CertificateAuthority.OcspConfigurationProperty (
        OcspConfigurationProperty(..), mkOcspConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcspConfigurationProperty
  = OcspConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                               ocspCustomCname :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcspConfigurationProperty :: OcspConfigurationProperty
mkOcspConfigurationProperty
  = OcspConfigurationProperty
      {enabled = Prelude.Nothing, ocspCustomCname = Prelude.Nothing}
instance ToResourceProperties OcspConfigurationProperty where
  toResourceProperties OcspConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.OcspConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "OcspCustomCname" Prelude.<$> ocspCustomCname])}
instance JSON.ToJSON OcspConfigurationProperty where
  toJSON OcspConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "OcspCustomCname" Prelude.<$> ocspCustomCname]))
instance Property "Enabled" OcspConfigurationProperty where
  type PropertyType "Enabled" OcspConfigurationProperty = Value Prelude.Bool
  set newValue OcspConfigurationProperty {..}
    = OcspConfigurationProperty {enabled = Prelude.pure newValue, ..}
instance Property "OcspCustomCname" OcspConfigurationProperty where
  type PropertyType "OcspCustomCname" OcspConfigurationProperty = Value Prelude.Text
  set newValue OcspConfigurationProperty {..}
    = OcspConfigurationProperty
        {ocspCustomCname = Prelude.pure newValue, ..}