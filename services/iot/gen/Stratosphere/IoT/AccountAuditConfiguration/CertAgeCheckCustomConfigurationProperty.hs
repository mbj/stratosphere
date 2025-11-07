module Stratosphere.IoT.AccountAuditConfiguration.CertAgeCheckCustomConfigurationProperty (
        CertAgeCheckCustomConfigurationProperty(..),
        mkCertAgeCheckCustomConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertAgeCheckCustomConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certagecheckcustomconfiguration.html>
    CertAgeCheckCustomConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certagecheckcustomconfiguration.html#cfn-iot-accountauditconfiguration-certagecheckcustomconfiguration-certagethresholdindays>
                                             certAgeThresholdInDays :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertAgeCheckCustomConfigurationProperty ::
  CertAgeCheckCustomConfigurationProperty
mkCertAgeCheckCustomConfigurationProperty
  = CertAgeCheckCustomConfigurationProperty
      {haddock_workaround_ = (),
       certAgeThresholdInDays = Prelude.Nothing}
instance ToResourceProperties CertAgeCheckCustomConfigurationProperty where
  toResourceProperties CertAgeCheckCustomConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.CertAgeCheckCustomConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertAgeThresholdInDays"
                              Prelude.<$> certAgeThresholdInDays])}
instance JSON.ToJSON CertAgeCheckCustomConfigurationProperty where
  toJSON CertAgeCheckCustomConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertAgeThresholdInDays"
                 Prelude.<$> certAgeThresholdInDays]))
instance Property "CertAgeThresholdInDays" CertAgeCheckCustomConfigurationProperty where
  type PropertyType "CertAgeThresholdInDays" CertAgeCheckCustomConfigurationProperty = Value Prelude.Text
  set newValue CertAgeCheckCustomConfigurationProperty {..}
    = CertAgeCheckCustomConfigurationProperty
        {certAgeThresholdInDays = Prelude.pure newValue, ..}