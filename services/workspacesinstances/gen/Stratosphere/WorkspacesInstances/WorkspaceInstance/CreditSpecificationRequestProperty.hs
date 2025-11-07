module Stratosphere.WorkspacesInstances.WorkspaceInstance.CreditSpecificationRequestProperty (
        CreditSpecificationRequestProperty(..),
        mkCreditSpecificationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreditSpecificationRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-creditspecificationrequest.html>
    CreditSpecificationRequestProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-creditspecificationrequest.html#cfn-workspacesinstances-workspaceinstance-creditspecificationrequest-cpucredits>
                                        cpuCredits :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreditSpecificationRequestProperty ::
  CreditSpecificationRequestProperty
mkCreditSpecificationRequestProperty
  = CreditSpecificationRequestProperty
      {haddock_workaround_ = (), cpuCredits = Prelude.Nothing}
instance ToResourceProperties CreditSpecificationRequestProperty where
  toResourceProperties CreditSpecificationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.CreditSpecificationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CpuCredits" Prelude.<$> cpuCredits])}
instance JSON.ToJSON CreditSpecificationRequestProperty where
  toJSON CreditSpecificationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CpuCredits" Prelude.<$> cpuCredits]))
instance Property "CpuCredits" CreditSpecificationRequestProperty where
  type PropertyType "CpuCredits" CreditSpecificationRequestProperty = Value Prelude.Text
  set newValue CreditSpecificationRequestProperty {..}
    = CreditSpecificationRequestProperty
        {cpuCredits = Prelude.pure newValue, ..}