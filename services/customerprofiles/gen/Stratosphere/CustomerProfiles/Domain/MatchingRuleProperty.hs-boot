module Stratosphere.CustomerProfiles.Domain.MatchingRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchingRuleProperty :: Prelude.Type
instance ToResourceProperties MatchingRuleProperty
instance Prelude.Eq MatchingRuleProperty
instance Prelude.Show MatchingRuleProperty
instance JSON.ToJSON MatchingRuleProperty