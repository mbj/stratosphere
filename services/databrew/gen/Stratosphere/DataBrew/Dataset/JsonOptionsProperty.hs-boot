module Stratosphere.DataBrew.Dataset.JsonOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonOptionsProperty :: Prelude.Type
instance ToResourceProperties JsonOptionsProperty
instance JSON.ToJSON JsonOptionsProperty