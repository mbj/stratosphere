module Stratosphere.IoTTwinMaker.Entity.ComponentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComponentProperty :: Prelude.Type
instance ToResourceProperties ComponentProperty
instance Prelude.Eq ComponentProperty
instance Prelude.Show ComponentProperty
instance JSON.ToJSON ComponentProperty