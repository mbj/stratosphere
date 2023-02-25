module Stratosphere.Glue.Partition.SerdeInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SerdeInfoProperty :: Prelude.Type
instance ToResourceProperties SerdeInfoProperty
instance JSON.ToJSON SerdeInfoProperty