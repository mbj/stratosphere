module Stratosphere.IoTEvents.DetectorModel.PayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PayloadProperty :: Prelude.Type
instance ToResourceProperties PayloadProperty
instance Prelude.Eq PayloadProperty
instance Prelude.Show PayloadProperty
instance JSON.ToJSON PayloadProperty