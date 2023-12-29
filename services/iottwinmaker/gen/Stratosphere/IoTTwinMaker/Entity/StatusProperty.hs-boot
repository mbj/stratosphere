module Stratosphere.IoTTwinMaker.Entity.StatusProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatusProperty :: Prelude.Type
instance ToResourceProperties StatusProperty
instance Prelude.Eq StatusProperty
instance Prelude.Show StatusProperty
instance JSON.ToJSON StatusProperty