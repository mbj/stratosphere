module Stratosphere.IoTEvents.DetectorModel.SnsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SnsProperty :: Prelude.Type
instance ToResourceProperties SnsProperty
instance Prelude.Eq SnsProperty
instance Prelude.Show SnsProperty
instance JSON.ToJSON SnsProperty