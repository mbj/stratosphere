module Stratosphere.VerifiedPermissions.PolicyStore.DeletionProtectionProperty (
        DeletionProtectionProperty(..), mkDeletionProtectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeletionProtectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policystore-deletionprotection.html>
    DeletionProtectionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policystore-deletionprotection.html#cfn-verifiedpermissions-policystore-deletionprotection-mode>
                                mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeletionProtectionProperty ::
  Value Prelude.Text -> DeletionProtectionProperty
mkDeletionProtectionProperty mode
  = DeletionProtectionProperty
      {haddock_workaround_ = (), mode = mode}
instance ToResourceProperties DeletionProtectionProperty where
  toResourceProperties DeletionProtectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyStore.DeletionProtection",
         supportsTags = Prelude.False, properties = ["Mode" JSON..= mode]}
instance JSON.ToJSON DeletionProtectionProperty where
  toJSON DeletionProtectionProperty {..}
    = JSON.object ["Mode" JSON..= mode]
instance Property "Mode" DeletionProtectionProperty where
  type PropertyType "Mode" DeletionProtectionProperty = Value Prelude.Text
  set newValue DeletionProtectionProperty {..}
    = DeletionProtectionProperty {mode = newValue, ..}