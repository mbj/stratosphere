module Stratosphere.SageMaker.UserProfile.CodeRepositoryProperty (
        CodeRepositoryProperty(..), mkCodeRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeRepositoryProperty
  = CodeRepositoryProperty {repositoryUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeRepositoryProperty ::
  Value Prelude.Text -> CodeRepositoryProperty
mkCodeRepositoryProperty repositoryUrl
  = CodeRepositoryProperty {repositoryUrl = repositoryUrl}
instance ToResourceProperties CodeRepositoryProperty where
  toResourceProperties CodeRepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CodeRepository",
         supportsTags = Prelude.False,
         properties = ["RepositoryUrl" JSON..= repositoryUrl]}
instance JSON.ToJSON CodeRepositoryProperty where
  toJSON CodeRepositoryProperty {..}
    = JSON.object ["RepositoryUrl" JSON..= repositoryUrl]
instance Property "RepositoryUrl" CodeRepositoryProperty where
  type PropertyType "RepositoryUrl" CodeRepositoryProperty = Value Prelude.Text
  set newValue CodeRepositoryProperty {}
    = CodeRepositoryProperty {repositoryUrl = newValue, ..}