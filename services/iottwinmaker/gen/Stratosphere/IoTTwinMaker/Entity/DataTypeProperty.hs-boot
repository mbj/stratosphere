module Stratosphere.IoTTwinMaker.Entity.DataTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataTypeProperty :: Prelude.Type
instance ToResourceProperties DataTypeProperty
instance Prelude.Eq DataTypeProperty
instance Prelude.Show DataTypeProperty
instance JSON.ToJSON DataTypeProperty