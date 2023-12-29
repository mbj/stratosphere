module Stratosphere.ManagedBlockchain.Member.VotingPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VotingPolicyProperty :: Prelude.Type
instance ToResourceProperties VotingPolicyProperty
instance Prelude.Eq VotingPolicyProperty
instance Prelude.Show VotingPolicyProperty
instance JSON.ToJSON VotingPolicyProperty