module Stratosphere.M2.Deployment (
        Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = Deployment {applicationId :: (Value Prelude.Text),
                applicationVersion :: (Value Prelude.Integer),
                environmentId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployment ::
  Value Prelude.Text
  -> Value Prelude.Integer -> Value Prelude.Text -> Deployment
mkDeployment applicationId applicationVersion environmentId
  = Deployment
      {applicationId = applicationId,
       applicationVersion = applicationVersion,
       environmentId = environmentId}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::M2::Deployment", supportsTags = Prelude.False,
         properties = ["ApplicationId" JSON..= applicationId,
                       "ApplicationVersion" JSON..= applicationVersion,
                       "EnvironmentId" JSON..= environmentId]}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        ["ApplicationId" JSON..= applicationId,
         "ApplicationVersion" JSON..= applicationVersion,
         "EnvironmentId" JSON..= environmentId]
instance Property "ApplicationId" Deployment where
  type PropertyType "ApplicationId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {applicationId = newValue, ..}
instance Property "ApplicationVersion" Deployment where
  type PropertyType "ApplicationVersion" Deployment = Value Prelude.Integer
  set newValue Deployment {..}
    = Deployment {applicationVersion = newValue, ..}
instance Property "EnvironmentId" Deployment where
  type PropertyType "EnvironmentId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {environmentId = newValue, ..}