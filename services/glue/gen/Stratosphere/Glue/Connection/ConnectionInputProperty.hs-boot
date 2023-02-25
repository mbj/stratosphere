module Stratosphere.Glue.Connection.ConnectionInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConnectionInputProperty :: Prelude.Type
instance ToResourceProperties ConnectionInputProperty
instance JSON.ToJSON ConnectionInputProperty