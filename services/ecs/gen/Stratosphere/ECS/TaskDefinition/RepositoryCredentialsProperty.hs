module Stratosphere.ECS.TaskDefinition.RepositoryCredentialsProperty (
        RepositoryCredentialsProperty(..), mkRepositoryCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryCredentialsProperty
  = RepositoryCredentialsProperty {credentialsParameter :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryCredentialsProperty :: RepositoryCredentialsProperty
mkRepositoryCredentialsProperty
  = RepositoryCredentialsProperty
      {credentialsParameter = Prelude.Nothing}
instance ToResourceProperties RepositoryCredentialsProperty where
  toResourceProperties RepositoryCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.RepositoryCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CredentialsParameter"
                              Prelude.<$> credentialsParameter])}
instance JSON.ToJSON RepositoryCredentialsProperty where
  toJSON RepositoryCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CredentialsParameter"
                 Prelude.<$> credentialsParameter]))
instance Property "CredentialsParameter" RepositoryCredentialsProperty where
  type PropertyType "CredentialsParameter" RepositoryCredentialsProperty = Value Prelude.Text
  set newValue RepositoryCredentialsProperty {}
    = RepositoryCredentialsProperty
        {credentialsParameter = Prelude.pure newValue, ..}