module Stratosphere.ARCRegionSwitch.Plan.StepProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StepProperty :: Prelude.Type
instance ToResourceProperties StepProperty
instance Prelude.Eq StepProperty
instance Prelude.Show StepProperty
instance JSON.ToJSON StepProperty