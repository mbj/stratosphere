module Stratosphere.QuickSight.Analysis.EntityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntityProperty :: Prelude.Type
instance ToResourceProperties EntityProperty
instance Prelude.Eq EntityProperty
instance Prelude.Show EntityProperty
instance JSON.ToJSON EntityProperty