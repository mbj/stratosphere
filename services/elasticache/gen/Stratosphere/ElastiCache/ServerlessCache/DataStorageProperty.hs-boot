module Stratosphere.ElastiCache.ServerlessCache.DataStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataStorageProperty :: Prelude.Type
instance ToResourceProperties DataStorageProperty
instance Prelude.Eq DataStorageProperty
instance Prelude.Show DataStorageProperty
instance JSON.ToJSON DataStorageProperty