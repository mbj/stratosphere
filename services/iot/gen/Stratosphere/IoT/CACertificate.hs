module Stratosphere.IoT.CACertificate (
        module Exports, CACertificate(..), mkCACertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.CACertificate.RegistrationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CACertificate
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html>
    CACertificate {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-autoregistrationstatus>
                   autoRegistrationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-cacertificatepem>
                   cACertificatePem :: (Value Prelude.Text),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-certificatemode>
                   certificateMode :: (Prelude.Maybe (Value Prelude.Text)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-registrationconfig>
                   registrationConfig :: (Prelude.Maybe RegistrationConfigProperty),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-removeautoregistration>
                   removeAutoRegistration :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-status>
                   status :: (Value Prelude.Text),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-cacertificate.html#cfn-iot-cacertificate-verificationcertificatepem>
                   verificationCertificatePem :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCACertificate ::
  Value Prelude.Text -> Value Prelude.Text -> CACertificate
mkCACertificate cACertificatePem status
  = CACertificate
      {cACertificatePem = cACertificatePem, status = status,
       autoRegistrationStatus = Prelude.Nothing,
       certificateMode = Prelude.Nothing,
       registrationConfig = Prelude.Nothing,
       removeAutoRegistration = Prelude.Nothing, tags = Prelude.Nothing,
       verificationCertificatePem = Prelude.Nothing}
instance ToResourceProperties CACertificate where
  toResourceProperties CACertificate {..}
    = ResourceProperties
        {awsType = "AWS::IoT::CACertificate", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CACertificatePem" JSON..= cACertificatePem,
                            "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoRegistrationStatus"
                                 Prelude.<$> autoRegistrationStatus,
                               (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                               (JSON..=) "RegistrationConfig" Prelude.<$> registrationConfig,
                               (JSON..=) "RemoveAutoRegistration"
                                 Prelude.<$> removeAutoRegistration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VerificationCertificatePem"
                                 Prelude.<$> verificationCertificatePem]))}
instance JSON.ToJSON CACertificate where
  toJSON CACertificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CACertificatePem" JSON..= cACertificatePem,
               "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "AutoRegistrationStatus"
                    Prelude.<$> autoRegistrationStatus,
                  (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                  (JSON..=) "RegistrationConfig" Prelude.<$> registrationConfig,
                  (JSON..=) "RemoveAutoRegistration"
                    Prelude.<$> removeAutoRegistration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VerificationCertificatePem"
                    Prelude.<$> verificationCertificatePem])))
instance Property "AutoRegistrationStatus" CACertificate where
  type PropertyType "AutoRegistrationStatus" CACertificate = Value Prelude.Text
  set newValue CACertificate {..}
    = CACertificate
        {autoRegistrationStatus = Prelude.pure newValue, ..}
instance Property "CACertificatePem" CACertificate where
  type PropertyType "CACertificatePem" CACertificate = Value Prelude.Text
  set newValue CACertificate {..}
    = CACertificate {cACertificatePem = newValue, ..}
instance Property "CertificateMode" CACertificate where
  type PropertyType "CertificateMode" CACertificate = Value Prelude.Text
  set newValue CACertificate {..}
    = CACertificate {certificateMode = Prelude.pure newValue, ..}
instance Property "RegistrationConfig" CACertificate where
  type PropertyType "RegistrationConfig" CACertificate = RegistrationConfigProperty
  set newValue CACertificate {..}
    = CACertificate {registrationConfig = Prelude.pure newValue, ..}
instance Property "RemoveAutoRegistration" CACertificate where
  type PropertyType "RemoveAutoRegistration" CACertificate = Value Prelude.Bool
  set newValue CACertificate {..}
    = CACertificate
        {removeAutoRegistration = Prelude.pure newValue, ..}
instance Property "Status" CACertificate where
  type PropertyType "Status" CACertificate = Value Prelude.Text
  set newValue CACertificate {..}
    = CACertificate {status = newValue, ..}
instance Property "Tags" CACertificate where
  type PropertyType "Tags" CACertificate = [Tag]
  set newValue CACertificate {..}
    = CACertificate {tags = Prelude.pure newValue, ..}
instance Property "VerificationCertificatePem" CACertificate where
  type PropertyType "VerificationCertificatePem" CACertificate = Value Prelude.Text
  set newValue CACertificate {..}
    = CACertificate
        {verificationCertificatePem = Prelude.pure newValue, ..}