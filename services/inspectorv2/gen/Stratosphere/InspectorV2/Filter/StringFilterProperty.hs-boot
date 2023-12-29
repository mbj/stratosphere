module Stratosphere.InspectorV2.Filter.StringFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StringFilterProperty :: Prelude.Type
instance ToResourceProperties StringFilterProperty
instance Prelude.Eq StringFilterProperty
instance Prelude.Show StringFilterProperty
instance JSON.ToJSON StringFilterProperty