module Stratosphere.SageMaker.ModelPackage.ExplainabilityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExplainabilityProperty :: Prelude.Type
instance ToResourceProperties ExplainabilityProperty
instance JSON.ToJSON ExplainabilityProperty