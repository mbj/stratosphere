module Stratosphere.M2.Application.DefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DefinitionProperty :: Prelude.Type
instance ToResourceProperties DefinitionProperty
instance JSON.ToJSON DefinitionProperty