module Stratosphere.Cloud9.EnvironmentEC2.RepositoryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RepositoryProperty :: Prelude.Type
instance ToResourceProperties RepositoryProperty
instance JSON.ToJSON RepositoryProperty