module Stratosphere.SageMaker.ModelPackage.TransformInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TransformInputProperty :: Prelude.Type
instance ToResourceProperties TransformInputProperty
instance JSON.ToJSON TransformInputProperty