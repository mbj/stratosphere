module Stratosphere.DynamoDB.Table.AttributeDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttributeDefinitionProperty :: Prelude.Type
instance ToResourceProperties AttributeDefinitionProperty
instance Prelude.Eq AttributeDefinitionProperty
instance Prelude.Show AttributeDefinitionProperty
instance JSON.ToJSON AttributeDefinitionProperty