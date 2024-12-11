module Stratosphere.Bedrock.Agent.APISchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data APISchemaProperty :: Prelude.Type
instance ToResourceProperties APISchemaProperty
instance Prelude.Eq APISchemaProperty
instance Prelude.Show APISchemaProperty
instance JSON.ToJSON APISchemaProperty