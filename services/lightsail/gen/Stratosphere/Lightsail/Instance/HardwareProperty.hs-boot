module Stratosphere.Lightsail.Instance.HardwareProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HardwareProperty :: Prelude.Type
instance ToResourceProperties HardwareProperty
instance Prelude.Eq HardwareProperty
instance Prelude.Show HardwareProperty
instance JSON.ToJSON HardwareProperty