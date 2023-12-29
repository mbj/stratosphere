module Stratosphere.NetworkFirewall.RuleGroup.HeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HeaderProperty :: Prelude.Type
instance ToResourceProperties HeaderProperty
instance Prelude.Eq HeaderProperty
instance Prelude.Show HeaderProperty
instance JSON.ToJSON HeaderProperty