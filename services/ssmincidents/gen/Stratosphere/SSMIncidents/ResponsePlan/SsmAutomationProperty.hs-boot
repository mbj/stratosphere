module Stratosphere.SSMIncidents.ResponsePlan.SsmAutomationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SsmAutomationProperty :: Prelude.Type
instance ToResourceProperties SsmAutomationProperty
instance JSON.ToJSON SsmAutomationProperty