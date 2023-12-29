module Stratosphere.IoTFleetWise.SignalCatalog.NodeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NodeProperty :: Prelude.Type
instance ToResourceProperties NodeProperty
instance Prelude.Eq NodeProperty
instance Prelude.Show NodeProperty
instance JSON.ToJSON NodeProperty