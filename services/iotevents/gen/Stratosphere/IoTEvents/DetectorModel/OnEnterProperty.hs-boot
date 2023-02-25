module Stratosphere.IoTEvents.DetectorModel.OnEnterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OnEnterProperty :: Prelude.Type
instance ToResourceProperties OnEnterProperty
instance JSON.ToJSON OnEnterProperty