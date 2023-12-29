module Stratosphere.IoTEvents.DetectorModel.SqsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SqsProperty :: Prelude.Type
instance ToResourceProperties SqsProperty
instance Prelude.Eq SqsProperty
instance Prelude.Show SqsProperty
instance JSON.ToJSON SqsProperty