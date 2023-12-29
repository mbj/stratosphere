module Stratosphere.WAFv2.WebACL.ExcludedRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExcludedRuleProperty :: Prelude.Type
instance ToResourceProperties ExcludedRuleProperty
instance Prelude.Eq ExcludedRuleProperty
instance Prelude.Show ExcludedRuleProperty
instance JSON.ToJSON ExcludedRuleProperty