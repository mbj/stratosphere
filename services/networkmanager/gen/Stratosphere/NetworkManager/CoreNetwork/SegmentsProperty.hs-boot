module Stratosphere.NetworkManager.CoreNetwork.SegmentsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SegmentsProperty :: Prelude.Type
instance ToResourceProperties SegmentsProperty
instance Prelude.Eq SegmentsProperty
instance Prelude.Show SegmentsProperty
instance JSON.ToJSON SegmentsProperty