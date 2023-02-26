module Stratosphere.SageMaker.ModelCard.SecurityConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecurityConfigProperty :: Prelude.Type
instance ToResourceProperties SecurityConfigProperty
instance JSON.ToJSON SecurityConfigProperty