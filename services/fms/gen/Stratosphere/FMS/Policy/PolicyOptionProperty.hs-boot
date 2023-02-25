module Stratosphere.FMS.Policy.PolicyOptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyOptionProperty :: Prelude.Type
instance ToResourceProperties PolicyOptionProperty
instance JSON.ToJSON PolicyOptionProperty