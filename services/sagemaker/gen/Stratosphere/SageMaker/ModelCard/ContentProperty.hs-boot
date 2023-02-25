module Stratosphere.SageMaker.ModelCard.ContentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContentProperty :: Prelude.Type
instance ToResourceProperties ContentProperty
instance JSON.ToJSON ContentProperty