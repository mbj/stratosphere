module Stratosphere.DataBrew.Dataset.FilterValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterValueProperty :: Prelude.Type
instance ToResourceProperties FilterValueProperty
instance Prelude.Eq FilterValueProperty
instance Prelude.Show FilterValueProperty
instance JSON.ToJSON FilterValueProperty