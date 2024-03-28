module Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV3Property (
        EnrollmentFlagsV3Property(..), mkEnrollmentFlagsV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnrollmentFlagsV3Property
  = EnrollmentFlagsV3Property {enableKeyReuseOnNtTokenKeysetStorageFull :: (Prelude.Maybe (Value Prelude.Bool)),
                               includeSymmetricAlgorithms :: (Prelude.Maybe (Value Prelude.Bool)),
                               noSecurityExtension :: (Prelude.Maybe (Value Prelude.Bool)),
                               removeInvalidCertificateFromPersonalStore :: (Prelude.Maybe (Value Prelude.Bool)),
                               userInteractionRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnrollmentFlagsV3Property :: EnrollmentFlagsV3Property
mkEnrollmentFlagsV3Property
  = EnrollmentFlagsV3Property
      {enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.Nothing,
       includeSymmetricAlgorithms = Prelude.Nothing,
       noSecurityExtension = Prelude.Nothing,
       removeInvalidCertificateFromPersonalStore = Prelude.Nothing,
       userInteractionRequired = Prelude.Nothing}
instance ToResourceProperties EnrollmentFlagsV3Property where
  toResourceProperties EnrollmentFlagsV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.EnrollmentFlagsV3",
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
instance JSON.ToJSON EnrollmentFlagsV3Property where
  toJSON EnrollmentFlagsV3Property {..}
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
instance Property "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV3Property where
  type PropertyType "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV3Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV3Property {..}
    = EnrollmentFlagsV3Property
        {enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.pure newValue,
         ..}
instance Property "IncludeSymmetricAlgorithms" EnrollmentFlagsV3Property where
  type PropertyType "IncludeSymmetricAlgorithms" EnrollmentFlagsV3Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV3Property {..}
    = EnrollmentFlagsV3Property
        {includeSymmetricAlgorithms = Prelude.pure newValue, ..}
instance Property "NoSecurityExtension" EnrollmentFlagsV3Property where
  type PropertyType "NoSecurityExtension" EnrollmentFlagsV3Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV3Property {..}
    = EnrollmentFlagsV3Property
        {noSecurityExtension = Prelude.pure newValue, ..}
instance Property "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV3Property where
  type PropertyType "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV3Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV3Property {..}
    = EnrollmentFlagsV3Property
        {removeInvalidCertificateFromPersonalStore = Prelude.pure newValue,
         ..}
instance Property "UserInteractionRequired" EnrollmentFlagsV3Property where
  type PropertyType "UserInteractionRequired" EnrollmentFlagsV3Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV3Property {..}
    = EnrollmentFlagsV3Property
        {userInteractionRequired = Prelude.pure newValue, ..}