module Stratosphere.WAFv2.RuleGroup.ChallengeActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ChallengeActionProperty :: Prelude.Type
instance ToResourceProperties ChallengeActionProperty
instance JSON.ToJSON ChallengeActionProperty