module Stratosphere.CleanRoomsML.TrainingDataset.DatasetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatasetProperty :: Prelude.Type
instance ToResourceProperties DatasetProperty
instance Prelude.Eq DatasetProperty
instance Prelude.Show DatasetProperty
instance JSON.ToJSON DatasetProperty