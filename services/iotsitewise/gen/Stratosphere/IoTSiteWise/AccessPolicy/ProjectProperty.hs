module Stratosphere.IoTSiteWise.AccessPolicy.ProjectProperty (
        ProjectProperty(..), mkProjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-project.html>
    ProjectProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-project.html#cfn-iotsitewise-accesspolicy-project-id>
                     id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectProperty :: ProjectProperty
mkProjectProperty
  = ProjectProperty {haddock_workaround_ = (), id = Prelude.Nothing}
instance ToResourceProperties ProjectProperty where
  toResourceProperties ProjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.Project",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id])}
instance JSON.ToJSON ProjectProperty where
  toJSON ProjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id]))
instance Property "id" ProjectProperty where
  type PropertyType "id" ProjectProperty = Value Prelude.Text
  set newValue ProjectProperty {..}
    = ProjectProperty {id = Prelude.pure newValue, ..}