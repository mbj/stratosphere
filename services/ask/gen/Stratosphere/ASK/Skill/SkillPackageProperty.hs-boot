module Stratosphere.ASK.Skill.SkillPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SkillPackageProperty :: Prelude.Type
instance ToResourceProperties SkillPackageProperty
instance JSON.ToJSON SkillPackageProperty