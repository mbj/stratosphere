module Stratosphere.Batch.JobDefinition.RepositoryCredentialsProperty (
        RepositoryCredentialsProperty(..), mkRepositoryCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryCredentialsProperty
  = RepositoryCredentialsProperty {credentialsParameter :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryCredentialsProperty ::
  Value Prelude.Text -> RepositoryCredentialsProperty
mkRepositoryCredentialsProperty credentialsParameter
  = RepositoryCredentialsProperty
      {credentialsParameter = credentialsParameter}
instance ToResourceProperties RepositoryCredentialsProperty where
  toResourceProperties RepositoryCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.RepositoryCredentials",
         supportsTags = Prelude.False,
         properties = ["CredentialsParameter" JSON..= credentialsParameter]}
instance JSON.ToJSON RepositoryCredentialsProperty where
  toJSON RepositoryCredentialsProperty {..}
    = JSON.object ["CredentialsParameter" JSON..= credentialsParameter]
instance Property "CredentialsParameter" RepositoryCredentialsProperty where
  type PropertyType "CredentialsParameter" RepositoryCredentialsProperty = Value Prelude.Text
  set newValue RepositoryCredentialsProperty {}
    = RepositoryCredentialsProperty
        {credentialsParameter = newValue, ..}