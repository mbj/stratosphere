module Stratosphere.Glue.Partition.SkewedInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SkewedInfoProperty :: Prelude.Type
instance ToResourceProperties SkewedInfoProperty
instance Prelude.Eq SkewedInfoProperty
instance Prelude.Show SkewedInfoProperty
instance JSON.ToJSON SkewedInfoProperty