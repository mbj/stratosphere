module Stratosphere.IoTTwinMaker.Entity.DataValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataValueProperty :: Prelude.Type
instance ToResourceProperties DataValueProperty
instance JSON.ToJSON DataValueProperty