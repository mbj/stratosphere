module Stratosphere.IoTSiteWise.Dataset.DatasetSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatasetSourceProperty :: Prelude.Type
instance ToResourceProperties DatasetSourceProperty
instance Prelude.Eq DatasetSourceProperty
instance Prelude.Show DatasetSourceProperty
instance JSON.ToJSON DatasetSourceProperty