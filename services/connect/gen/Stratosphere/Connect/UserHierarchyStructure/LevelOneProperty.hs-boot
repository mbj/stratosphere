module Stratosphere.Connect.UserHierarchyStructure.LevelOneProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LevelOneProperty :: Prelude.Type
instance ToResourceProperties LevelOneProperty
instance Prelude.Eq LevelOneProperty
instance Prelude.Show LevelOneProperty
instance JSON.ToJSON LevelOneProperty