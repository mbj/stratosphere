module Stratosphere.ARCRegionSwitch.Plan.AsgProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AsgProperty :: Prelude.Type
instance ToResourceProperties AsgProperty
instance Prelude.Eq AsgProperty
instance Prelude.Show AsgProperty
instance JSON.ToJSON AsgProperty