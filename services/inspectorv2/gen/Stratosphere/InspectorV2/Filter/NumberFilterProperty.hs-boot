module Stratosphere.InspectorV2.Filter.NumberFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NumberFilterProperty :: Prelude.Type
instance ToResourceProperties NumberFilterProperty
instance Prelude.Eq NumberFilterProperty
instance Prelude.Show NumberFilterProperty
instance JSON.ToJSON NumberFilterProperty