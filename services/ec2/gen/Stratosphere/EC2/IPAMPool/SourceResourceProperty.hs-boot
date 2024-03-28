module Stratosphere.EC2.IPAMPool.SourceResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceResourceProperty :: Prelude.Type
instance ToResourceProperties SourceResourceProperty
instance Prelude.Eq SourceResourceProperty
instance Prelude.Show SourceResourceProperty
instance JSON.ToJSON SourceResourceProperty