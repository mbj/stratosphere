module Stratosphere.Batch.JobDefinition.SecurityContextProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecurityContextProperty :: Prelude.Type
instance ToResourceProperties SecurityContextProperty
instance JSON.ToJSON SecurityContextProperty