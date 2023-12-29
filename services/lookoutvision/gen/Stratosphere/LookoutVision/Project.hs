module Stratosphere.LookoutVision.Project (
        Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Project
  = Project {projectName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Project
mkProject projectName = Project {projectName = projectName}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::LookoutVision::Project",
         supportsTags = Prelude.False,
         properties = ["ProjectName" JSON..= projectName]}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object ["ProjectName" JSON..= projectName]
instance Property "ProjectName" Project where
  type PropertyType "ProjectName" Project = Value Prelude.Text
  set newValue Project {} = Project {projectName = newValue, ..}