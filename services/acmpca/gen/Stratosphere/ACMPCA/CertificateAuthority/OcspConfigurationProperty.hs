module Stratosphere.ACMPCA.CertificateAuthority.OcspConfigurationProperty (
        OcspConfigurationProperty(..), mkOcspConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcspConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-ocspconfiguration.html>
    OcspConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-ocspconfiguration.html#cfn-acmpca-certificateauthority-ocspconfiguration-enabled>
                               enabled :: (Value Prelude.Bool),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-ocspconfiguration.html#cfn-acmpca-certificateauthority-ocspconfiguration-ocspcustomcname>
                               ocspCustomCname :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcspConfigurationProperty ::
  Value Prelude.Bool -> OcspConfigurationProperty
mkOcspConfigurationProperty enabled
  = OcspConfigurationProperty
      {haddock_workaround_ = (), enabled = enabled,
       ocspCustomCname = Prelude.Nothing}
instance ToResourceProperties OcspConfigurationProperty where
  toResourceProperties OcspConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.OcspConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "OcspCustomCname" Prelude.<$> ocspCustomCname]))}
instance JSON.ToJSON OcspConfigurationProperty where
  toJSON OcspConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "OcspCustomCname" Prelude.<$> ocspCustomCname])))
instance Property "Enabled" OcspConfigurationProperty where
  type PropertyType "Enabled" OcspConfigurationProperty = Value Prelude.Bool
  set newValue OcspConfigurationProperty {..}
    = OcspConfigurationProperty {enabled = newValue, ..}
instance Property "OcspCustomCname" OcspConfigurationProperty where
  type PropertyType "OcspCustomCname" OcspConfigurationProperty = Value Prelude.Text
  set newValue OcspConfigurationProperty {..}
    = OcspConfigurationProperty
        {ocspCustomCname = Prelude.pure newValue, ..}