module Stratosphere.Cognito.UserPool.SchemaAttributeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaAttributeProperty :: Prelude.Type
instance ToResourceProperties SchemaAttributeProperty
instance JSON.ToJSON SchemaAttributeProperty