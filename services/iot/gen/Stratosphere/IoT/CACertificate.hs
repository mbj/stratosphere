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
  = CACertificate {autoRegistrationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                   cACertificatePem :: (Value Prelude.Text),
                   certificateMode :: (Prelude.Maybe (Value Prelude.Text)),
                   registrationConfig :: (Prelude.Maybe RegistrationConfigProperty),
                   removeAutoRegistration :: (Prelude.Maybe (Value Prelude.Bool)),
                   status :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag]),
                   verificationCertificatePem :: (Prelude.Maybe (Value Prelude.Text))}
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