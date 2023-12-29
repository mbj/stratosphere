module Stratosphere.FMS.Policy.PolicyTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyTagProperty :: Prelude.Type
instance ToResourceProperties PolicyTagProperty
instance Prelude.Eq PolicyTagProperty
instance Prelude.Show PolicyTagProperty
instance JSON.ToJSON PolicyTagProperty