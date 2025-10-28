module Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV2Property (
        EnrollmentFlagsV2Property(..), mkEnrollmentFlagsV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnrollmentFlagsV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html>
    EnrollmentFlagsV2Property {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html#cfn-pcaconnectorad-template-enrollmentflagsv2-enablekeyreuseonnttokenkeysetstoragefull>
                               enableKeyReuseOnNtTokenKeysetStorageFull :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html#cfn-pcaconnectorad-template-enrollmentflagsv2-includesymmetricalgorithms>
                               includeSymmetricAlgorithms :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html#cfn-pcaconnectorad-template-enrollmentflagsv2-nosecurityextension>
                               noSecurityExtension :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html#cfn-pcaconnectorad-template-enrollmentflagsv2-removeinvalidcertificatefrompersonalstore>
                               removeInvalidCertificateFromPersonalStore :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-enrollmentflagsv2.html#cfn-pcaconnectorad-template-enrollmentflagsv2-userinteractionrequired>
                               userInteractionRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnrollmentFlagsV2Property :: EnrollmentFlagsV2Property
mkEnrollmentFlagsV2Property
  = EnrollmentFlagsV2Property
      {haddock_workaround_ = (),
       enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.Nothing,
       includeSymmetricAlgorithms = Prelude.Nothing,
       noSecurityExtension = Prelude.Nothing,
       removeInvalidCertificateFromPersonalStore = Prelude.Nothing,
       userInteractionRequired = Prelude.Nothing}
instance ToResourceProperties EnrollmentFlagsV2Property where
  toResourceProperties EnrollmentFlagsV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.EnrollmentFlagsV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableKeyReuseOnNtTokenKeysetStorageFull"
                              Prelude.<$> enableKeyReuseOnNtTokenKeysetStorageFull,
                            (JSON..=) "IncludeSymmetricAlgorithms"
                              Prelude.<$> includeSymmetricAlgorithms,
                            (JSON..=) "NoSecurityExtension" Prelude.<$> noSecurityExtension,
                            (JSON..=) "RemoveInvalidCertificateFromPersonalStore"
                              Prelude.<$> removeInvalidCertificateFromPersonalStore,
                            (JSON..=) "UserInteractionRequired"
                              Prelude.<$> userInteractionRequired])}
instance JSON.ToJSON EnrollmentFlagsV2Property where
  toJSON EnrollmentFlagsV2Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableKeyReuseOnNtTokenKeysetStorageFull"
                 Prelude.<$> enableKeyReuseOnNtTokenKeysetStorageFull,
               (JSON..=) "IncludeSymmetricAlgorithms"
                 Prelude.<$> includeSymmetricAlgorithms,
               (JSON..=) "NoSecurityExtension" Prelude.<$> noSecurityExtension,
               (JSON..=) "RemoveInvalidCertificateFromPersonalStore"
                 Prelude.<$> removeInvalidCertificateFromPersonalStore,
               (JSON..=) "UserInteractionRequired"
                 Prelude.<$> userInteractionRequired]))
instance Property "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV2Property where
  type PropertyType "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV2Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV2Property {..}
    = EnrollmentFlagsV2Property
        {enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.pure newValue,
         ..}
instance Property "IncludeSymmetricAlgorithms" EnrollmentFlagsV2Property where
  type PropertyType "IncludeSymmetricAlgorithms" EnrollmentFlagsV2Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV2Property {..}
    = EnrollmentFlagsV2Property
        {includeSymmetricAlgorithms = Prelude.pure newValue, ..}
instance Property "NoSecurityExtension" EnrollmentFlagsV2Property where
  type PropertyType "NoSecurityExtension" EnrollmentFlagsV2Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV2Property {..}
    = EnrollmentFlagsV2Property
        {noSecurityExtension = Prelude.pure newValue, ..}
instance Property "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV2Property where
  type PropertyType "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV2Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV2Property {..}
    = EnrollmentFlagsV2Property
        {removeInvalidCertificateFromPersonalStore = Prelude.pure newValue,
         ..}
instance Property "UserInteractionRequired" EnrollmentFlagsV2Property where
  type PropertyType "UserInteractionRequired" EnrollmentFlagsV2Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV2Property {..}
    = EnrollmentFlagsV2Property
        {userInteractionRequired = Prelude.pure newValue, ..}