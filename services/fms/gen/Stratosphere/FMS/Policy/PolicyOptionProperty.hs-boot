module Stratosphere.FMS.Policy.PolicyOptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyOptionProperty :: Prelude.Type
instance ToResourceProperties PolicyOptionProperty
instance Prelude.Eq PolicyOptionProperty
instance Prelude.Show PolicyOptionProperty
instance JSON.ToJSON PolicyOptionProperty