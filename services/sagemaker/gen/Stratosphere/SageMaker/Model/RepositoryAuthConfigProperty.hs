module Stratosphere.SageMaker.Model.RepositoryAuthConfigProperty (
        RepositoryAuthConfigProperty(..), mkRepositoryAuthConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryAuthConfigProperty
  = RepositoryAuthConfigProperty {repositoryCredentialsProviderArn :: (Value Prelude.Text)}
mkRepositoryAuthConfigProperty ::
  Value Prelude.Text -> RepositoryAuthConfigProperty
mkRepositoryAuthConfigProperty repositoryCredentialsProviderArn
  = RepositoryAuthConfigProperty
      {repositoryCredentialsProviderArn = repositoryCredentialsProviderArn}
instance ToResourceProperties RepositoryAuthConfigProperty where
  toResourceProperties RepositoryAuthConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.RepositoryAuthConfig",
         supportsTags = Prelude.False,
         properties = ["RepositoryCredentialsProviderArn"
                         JSON..= repositoryCredentialsProviderArn]}
instance JSON.ToJSON RepositoryAuthConfigProperty where
  toJSON RepositoryAuthConfigProperty {..}
    = JSON.object
        ["RepositoryCredentialsProviderArn"
           JSON..= repositoryCredentialsProviderArn]
instance Property "RepositoryCredentialsProviderArn" RepositoryAuthConfigProperty where
  type PropertyType "RepositoryCredentialsProviderArn" RepositoryAuthConfigProperty = Value Prelude.Text
  set newValue RepositoryAuthConfigProperty {}
    = RepositoryAuthConfigProperty
        {repositoryCredentialsProviderArn = newValue, ..}