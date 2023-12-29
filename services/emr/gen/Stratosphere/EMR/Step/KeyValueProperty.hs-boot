module Stratosphere.EMR.Step.KeyValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyValueProperty :: Prelude.Type
instance ToResourceProperties KeyValueProperty
instance Prelude.Eq KeyValueProperty
instance Prelude.Show KeyValueProperty
instance JSON.ToJSON KeyValueProperty