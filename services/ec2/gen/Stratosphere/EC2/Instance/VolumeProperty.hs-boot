module Stratosphere.EC2.Instance.VolumeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VolumeProperty :: Prelude.Type
instance ToResourceProperties VolumeProperty
instance JSON.ToJSON VolumeProperty