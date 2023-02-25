module Stratosphere.WAF.WebACL.ActivatedRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActivatedRuleProperty :: Prelude.Type
instance ToResourceProperties ActivatedRuleProperty
instance JSON.ToJSON ActivatedRuleProperty