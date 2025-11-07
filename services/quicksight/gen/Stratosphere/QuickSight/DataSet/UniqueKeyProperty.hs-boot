module Stratosphere.QuickSight.DataSet.UniqueKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UniqueKeyProperty :: Prelude.Type
instance ToResourceProperties UniqueKeyProperty
instance Prelude.Eq UniqueKeyProperty
instance Prelude.Show UniqueKeyProperty
instance JSON.ToJSON UniqueKeyProperty