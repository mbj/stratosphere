module Stratosphere.SageMaker.Model.ImageConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ImageConfigProperty :: Prelude.Type
instance ToResourceProperties ImageConfigProperty
instance JSON.ToJSON ImageConfigProperty