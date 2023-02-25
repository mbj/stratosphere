module Stratosphere.DataBrew.Dataset.InputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputProperty :: Prelude.Type
instance ToResourceProperties InputProperty
instance JSON.ToJSON InputProperty