module Stratosphere.ODB.CloudVmCluster.DbNodeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DbNodeProperty :: Prelude.Type
instance ToResourceProperties DbNodeProperty
instance Prelude.Eq DbNodeProperty
instance Prelude.Show DbNodeProperty
instance JSON.ToJSON DbNodeProperty