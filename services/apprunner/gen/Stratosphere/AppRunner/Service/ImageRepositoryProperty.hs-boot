module Stratosphere.AppRunner.Service.ImageRepositoryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ImageRepositoryProperty :: Prelude.Type
instance ToResourceProperties ImageRepositoryProperty
instance JSON.ToJSON ImageRepositoryProperty