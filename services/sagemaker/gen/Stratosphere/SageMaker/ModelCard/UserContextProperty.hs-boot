module Stratosphere.SageMaker.ModelCard.UserContextProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserContextProperty :: Prelude.Type
instance ToResourceProperties UserContextProperty
instance JSON.ToJSON UserContextProperty