module Stratosphere.CodeBuild.Project.ProjectFleetProperty (
        ProjectFleetProperty(..), mkProjectFleetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectFleetProperty
  = ProjectFleetProperty {fleetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectFleetProperty :: ProjectFleetProperty
mkProjectFleetProperty
  = ProjectFleetProperty {fleetArn = Prelude.Nothing}
instance ToResourceProperties ProjectFleetProperty where
  toResourceProperties ProjectFleetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectFleet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FleetArn" Prelude.<$> fleetArn])}
instance JSON.ToJSON ProjectFleetProperty where
  toJSON ProjectFleetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FleetArn" Prelude.<$> fleetArn]))
instance Property "FleetArn" ProjectFleetProperty where
  type PropertyType "FleetArn" ProjectFleetProperty = Value Prelude.Text
  set newValue ProjectFleetProperty {}
    = ProjectFleetProperty {fleetArn = Prelude.pure newValue, ..}