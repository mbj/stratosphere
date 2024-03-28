module Stratosphere.CodeBuild.Project.ProjectFleetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectFleetProperty :: Prelude.Type
instance ToResourceProperties ProjectFleetProperty
instance Prelude.Eq ProjectFleetProperty
instance Prelude.Show ProjectFleetProperty
instance JSON.ToJSON ProjectFleetProperty