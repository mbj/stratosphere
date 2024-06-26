module Stratosphere.Transfer.Workflow.InputFileLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputFileLocationProperty :: Prelude.Type
instance ToResourceProperties InputFileLocationProperty
instance Prelude.Eq InputFileLocationProperty
instance Prelude.Show InputFileLocationProperty
instance JSON.ToJSON InputFileLocationProperty