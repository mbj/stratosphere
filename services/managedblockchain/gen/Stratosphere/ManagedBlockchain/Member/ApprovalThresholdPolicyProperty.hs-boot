module Stratosphere.ManagedBlockchain.Member.ApprovalThresholdPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApprovalThresholdPolicyProperty :: Prelude.Type
instance ToResourceProperties ApprovalThresholdPolicyProperty
instance JSON.ToJSON ApprovalThresholdPolicyProperty