module Stratosphere.WorkspacesInstances.WorkspaceInstance.EnclaveOptionsRequestProperty (
        EnclaveOptionsRequestProperty(..), mkEnclaveOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnclaveOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-enclaveoptionsrequest.html>
    EnclaveOptionsRequestProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-enclaveoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-enclaveoptionsrequest-enabled>
                                   enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnclaveOptionsRequestProperty :: EnclaveOptionsRequestProperty
mkEnclaveOptionsRequestProperty
  = EnclaveOptionsRequestProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties EnclaveOptionsRequestProperty where
  toResourceProperties EnclaveOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.EnclaveOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON EnclaveOptionsRequestProperty where
  toJSON EnclaveOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" EnclaveOptionsRequestProperty where
  type PropertyType "Enabled" EnclaveOptionsRequestProperty = Value Prelude.Bool
  set newValue EnclaveOptionsRequestProperty {..}
    = EnclaveOptionsRequestProperty
        {enabled = Prelude.pure newValue, ..}