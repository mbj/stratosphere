module Stratosphere.Lightsail.Disk.AddOnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AddOnProperty :: Prelude.Type
instance ToResourceProperties AddOnProperty
instance Prelude.Eq AddOnProperty
instance Prelude.Show AddOnProperty
instance JSON.ToJSON AddOnProperty