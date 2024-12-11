module Stratosphere.WAFv2.RuleGroup.RateLimitHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RateLimitHeaderProperty :: Prelude.Type
instance ToResourceProperties RateLimitHeaderProperty
instance Prelude.Eq RateLimitHeaderProperty
instance Prelude.Show RateLimitHeaderProperty
instance JSON.ToJSON RateLimitHeaderProperty