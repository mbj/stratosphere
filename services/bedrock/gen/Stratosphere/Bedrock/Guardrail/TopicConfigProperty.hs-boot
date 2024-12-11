module Stratosphere.Bedrock.Guardrail.TopicConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicConfigProperty :: Prelude.Type
instance ToResourceProperties TopicConfigProperty
instance Prelude.Eq TopicConfigProperty
instance Prelude.Show TopicConfigProperty
instance JSON.ToJSON TopicConfigProperty