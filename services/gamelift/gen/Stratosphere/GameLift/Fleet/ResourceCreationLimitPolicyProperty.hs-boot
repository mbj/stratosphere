module Stratosphere.GameLift.Fleet.ResourceCreationLimitPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceCreationLimitPolicyProperty :: Prelude.Type
instance ToResourceProperties ResourceCreationLimitPolicyProperty
instance Prelude.Eq ResourceCreationLimitPolicyProperty
instance Prelude.Show ResourceCreationLimitPolicyProperty
instance JSON.ToJSON ResourceCreationLimitPolicyProperty