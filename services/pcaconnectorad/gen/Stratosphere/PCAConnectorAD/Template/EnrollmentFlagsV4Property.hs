module Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV4Property (
        EnrollmentFlagsV4Property(..), mkEnrollmentFlagsV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnrollmentFlagsV4Property
  = EnrollmentFlagsV4Property {enableKeyReuseOnNtTokenKeysetStorageFull :: (Prelude.Maybe (Value Prelude.Bool)),
                               includeSymmetricAlgorithms :: (Prelude.Maybe (Value Prelude.Bool)),
                               noSecurityExtension :: (Prelude.Maybe (Value Prelude.Bool)),
                               removeInvalidCertificateFromPersonalStore :: (Prelude.Maybe (Value Prelude.Bool)),
                               userInteractionRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnrollmentFlagsV4Property :: EnrollmentFlagsV4Property
mkEnrollmentFlagsV4Property
  = EnrollmentFlagsV4Property
      {enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.Nothing,
       includeSymmetricAlgorithms = Prelude.Nothing,
       noSecurityExtension = Prelude.Nothing,
       removeInvalidCertificateFromPersonalStore = Prelude.Nothing,
       userInteractionRequired = Prelude.Nothing}
instance ToResourceProperties EnrollmentFlagsV4Property where
  toResourceProperties EnrollmentFlagsV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.EnrollmentFlagsV4",
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
instance JSON.ToJSON EnrollmentFlagsV4Property where
  toJSON EnrollmentFlagsV4Property {..}
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
instance Property "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV4Property where
  type PropertyType "EnableKeyReuseOnNtTokenKeysetStorageFull" EnrollmentFlagsV4Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV4Property {..}
    = EnrollmentFlagsV4Property
        {enableKeyReuseOnNtTokenKeysetStorageFull = Prelude.pure newValue,
         ..}
instance Property "IncludeSymmetricAlgorithms" EnrollmentFlagsV4Property where
  type PropertyType "IncludeSymmetricAlgorithms" EnrollmentFlagsV4Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV4Property {..}
    = EnrollmentFlagsV4Property
        {includeSymmetricAlgorithms = Prelude.pure newValue, ..}
instance Property "NoSecurityExtension" EnrollmentFlagsV4Property where
  type PropertyType "NoSecurityExtension" EnrollmentFlagsV4Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV4Property {..}
    = EnrollmentFlagsV4Property
        {noSecurityExtension = Prelude.pure newValue, ..}
instance Property "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV4Property where
  type PropertyType "RemoveInvalidCertificateFromPersonalStore" EnrollmentFlagsV4Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV4Property {..}
    = EnrollmentFlagsV4Property
        {removeInvalidCertificateFromPersonalStore = Prelude.pure newValue,
         ..}
instance Property "UserInteractionRequired" EnrollmentFlagsV4Property where
  type PropertyType "UserInteractionRequired" EnrollmentFlagsV4Property = Value Prelude.Bool
  set newValue EnrollmentFlagsV4Property {..}
    = EnrollmentFlagsV4Property
        {userInteractionRequired = Prelude.pure newValue, ..}