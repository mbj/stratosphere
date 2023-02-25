module Stratosphere.CodeStar.GitHubRepository.CodeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CodeProperty :: Prelude.Type
instance ToResourceProperties CodeProperty
instance JSON.ToJSON CodeProperty