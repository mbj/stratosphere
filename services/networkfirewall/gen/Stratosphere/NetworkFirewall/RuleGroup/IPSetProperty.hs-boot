module Stratosphere.NetworkFirewall.RuleGroup.IPSetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IPSetProperty :: Prelude.Type
instance ToResourceProperties IPSetProperty
instance JSON.ToJSON IPSetProperty