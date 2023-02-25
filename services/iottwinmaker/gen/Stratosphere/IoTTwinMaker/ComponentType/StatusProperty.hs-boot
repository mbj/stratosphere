module Stratosphere.IoTTwinMaker.ComponentType.StatusProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatusProperty :: Prelude.Type
instance ToResourceProperties StatusProperty
instance JSON.ToJSON StatusProperty