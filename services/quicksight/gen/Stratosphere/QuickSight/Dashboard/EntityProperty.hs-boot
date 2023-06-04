module Stratosphere.QuickSight.Dashboard.EntityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntityProperty :: Prelude.Type
instance ToResourceProperties EntityProperty
instance JSON.ToJSON EntityProperty