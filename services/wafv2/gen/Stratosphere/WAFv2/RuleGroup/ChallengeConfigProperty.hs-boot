module Stratosphere.WAFv2.RuleGroup.ChallengeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ChallengeConfigProperty :: Prelude.Type
instance ToResourceProperties ChallengeConfigProperty
instance JSON.ToJSON ChallengeConfigProperty