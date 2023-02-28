module Stratosphere.Cloud9.EnvironmentEC2.RepositoryProperty (
        RepositoryProperty(..), mkRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryProperty
  = RepositoryProperty {pathComponent :: (Value Prelude.Text),
                        repositoryUrl :: (Value Prelude.Text)}
mkRepositoryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RepositoryProperty
mkRepositoryProperty pathComponent repositoryUrl
  = RepositoryProperty
      {pathComponent = pathComponent, repositoryUrl = repositoryUrl}
instance ToResourceProperties RepositoryProperty where
  toResourceProperties RepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cloud9::EnvironmentEC2.Repository",
         supportsTags = Prelude.False,
         properties = ["PathComponent" JSON..= pathComponent,
                       "RepositoryUrl" JSON..= repositoryUrl]}
instance JSON.ToJSON RepositoryProperty where
  toJSON RepositoryProperty {..}
    = JSON.object
        ["PathComponent" JSON..= pathComponent,
         "RepositoryUrl" JSON..= repositoryUrl]
instance Property "PathComponent" RepositoryProperty where
  type PropertyType "PathComponent" RepositoryProperty = Value Prelude.Text
  set newValue RepositoryProperty {..}
    = RepositoryProperty {pathComponent = newValue, ..}
instance Property "RepositoryUrl" RepositoryProperty where
  type PropertyType "RepositoryUrl" RepositoryProperty = Value Prelude.Text
  set newValue RepositoryProperty {..}
    = RepositoryProperty {repositoryUrl = newValue, ..}