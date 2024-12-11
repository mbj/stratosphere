module Stratosphere.Bedrock.Flow.FlowValidationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowValidationProperty :: Prelude.Type
instance ToResourceProperties FlowValidationProperty
instance Prelude.Eq FlowValidationProperty
instance Prelude.Show FlowValidationProperty
instance JSON.ToJSON FlowValidationProperty