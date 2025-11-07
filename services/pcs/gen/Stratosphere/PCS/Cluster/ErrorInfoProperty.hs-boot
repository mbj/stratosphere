module Stratosphere.PCS.Cluster.ErrorInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ErrorInfoProperty :: Prelude.Type
instance ToResourceProperties ErrorInfoProperty
instance Prelude.Eq ErrorInfoProperty
instance Prelude.Show ErrorInfoProperty
instance JSON.ToJSON ErrorInfoProperty