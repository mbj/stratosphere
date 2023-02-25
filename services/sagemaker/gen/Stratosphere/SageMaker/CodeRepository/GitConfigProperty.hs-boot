module Stratosphere.SageMaker.CodeRepository.GitConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GitConfigProperty :: Prelude.Type
instance ToResourceProperties GitConfigProperty
instance JSON.ToJSON GitConfigProperty