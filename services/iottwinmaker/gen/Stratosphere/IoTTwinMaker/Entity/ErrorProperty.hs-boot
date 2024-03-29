module Stratosphere.IoTTwinMaker.Entity.ErrorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ErrorProperty :: Prelude.Type
instance ToResourceProperties ErrorProperty
instance Prelude.Eq ErrorProperty
instance Prelude.Show ErrorProperty
instance JSON.ToJSON ErrorProperty