module Stratosphere.ARCRegionSwitch.Plan.WorkflowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WorkflowProperty :: Prelude.Type
instance ToResourceProperties WorkflowProperty
instance Prelude.Eq WorkflowProperty
instance Prelude.Show WorkflowProperty
instance JSON.ToJSON WorkflowProperty