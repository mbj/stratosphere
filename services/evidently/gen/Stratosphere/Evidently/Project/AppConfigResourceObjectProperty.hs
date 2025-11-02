module Stratosphere.Evidently.Project.AppConfigResourceObjectProperty (
        AppConfigResourceObjectProperty(..),
        mkAppConfigResourceObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppConfigResourceObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-appconfigresourceobject.html>
    AppConfigResourceObjectProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-appconfigresourceobject.html#cfn-evidently-project-appconfigresourceobject-applicationid>
                                     applicationId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-appconfigresourceobject.html#cfn-evidently-project-appconfigresourceobject-environmentid>
                                     environmentId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppConfigResourceObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AppConfigResourceObjectProperty
mkAppConfigResourceObjectProperty applicationId environmentId
  = AppConfigResourceObjectProperty
      {haddock_workaround_ = (), applicationId = applicationId,
       environmentId = environmentId}
instance ToResourceProperties AppConfigResourceObjectProperty where
  toResourceProperties AppConfigResourceObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Project.AppConfigResourceObject",
         supportsTags = Prelude.False,
         properties = ["ApplicationId" JSON..= applicationId,
                       "EnvironmentId" JSON..= environmentId]}
instance JSON.ToJSON AppConfigResourceObjectProperty where
  toJSON AppConfigResourceObjectProperty {..}
    = JSON.object
        ["ApplicationId" JSON..= applicationId,
         "EnvironmentId" JSON..= environmentId]
instance Property "ApplicationId" AppConfigResourceObjectProperty where
  type PropertyType "ApplicationId" AppConfigResourceObjectProperty = Value Prelude.Text
  set newValue AppConfigResourceObjectProperty {..}
    = AppConfigResourceObjectProperty {applicationId = newValue, ..}
instance Property "EnvironmentId" AppConfigResourceObjectProperty where
  type PropertyType "EnvironmentId" AppConfigResourceObjectProperty = Value Prelude.Text
  set newValue AppConfigResourceObjectProperty {..}
    = AppConfigResourceObjectProperty {environmentId = newValue, ..}