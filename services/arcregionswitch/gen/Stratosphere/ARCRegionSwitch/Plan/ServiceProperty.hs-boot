module Stratosphere.ARCRegionSwitch.Plan.ServiceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ServiceProperty :: Prelude.Type
instance ToResourceProperties ServiceProperty
instance Prelude.Eq ServiceProperty
instance Prelude.Show ServiceProperty
instance JSON.ToJSON ServiceProperty