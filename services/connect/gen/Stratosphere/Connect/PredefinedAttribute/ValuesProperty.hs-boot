module Stratosphere.Connect.PredefinedAttribute.ValuesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ValuesProperty :: Prelude.Type
instance ToResourceProperties ValuesProperty
instance Prelude.Eq ValuesProperty
instance Prelude.Show ValuesProperty
instance JSON.ToJSON ValuesProperty