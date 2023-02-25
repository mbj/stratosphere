module Stratosphere.NetworkFirewall.RuleGroup.ReferenceSetsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceSetsProperty :: Prelude.Type
instance ToResourceProperties ReferenceSetsProperty
instance JSON.ToJSON ReferenceSetsProperty