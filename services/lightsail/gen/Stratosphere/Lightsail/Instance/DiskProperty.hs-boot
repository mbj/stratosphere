module Stratosphere.Lightsail.Instance.DiskProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DiskProperty :: Prelude.Type
instance ToResourceProperties DiskProperty
instance JSON.ToJSON DiskProperty