module Stratosphere.IoTTwinMaker.ComponentType.PropertyGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PropertyGroupProperty :: Prelude.Type
instance ToResourceProperties PropertyGroupProperty
instance JSON.ToJSON PropertyGroupProperty