module Stratosphere.IoTTwinMaker.ComponentType.DataValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataValueProperty :: Prelude.Type
instance ToResourceProperties DataValueProperty
instance Prelude.Eq DataValueProperty
instance Prelude.Show DataValueProperty
instance JSON.ToJSON DataValueProperty