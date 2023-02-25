module Stratosphere.ASK.Skill.OverridesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OverridesProperty :: Prelude.Type
instance ToResourceProperties OverridesProperty
instance JSON.ToJSON OverridesProperty