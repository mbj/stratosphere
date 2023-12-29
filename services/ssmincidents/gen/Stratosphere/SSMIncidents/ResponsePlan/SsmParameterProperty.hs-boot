module Stratosphere.SSMIncidents.ResponsePlan.SsmParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SsmParameterProperty :: Prelude.Type
instance ToResourceProperties SsmParameterProperty
instance Prelude.Eq SsmParameterProperty
instance Prelude.Show SsmParameterProperty
instance JSON.ToJSON SsmParameterProperty