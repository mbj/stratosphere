module Stratosphere.Greengrass.ResourceDefinition.LocalDeviceResourceDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LocalDeviceResourceDataProperty :: Prelude.Type
instance ToResourceProperties LocalDeviceResourceDataProperty
instance Prelude.Eq LocalDeviceResourceDataProperty
instance Prelude.Show LocalDeviceResourceDataProperty
instance JSON.ToJSON LocalDeviceResourceDataProperty