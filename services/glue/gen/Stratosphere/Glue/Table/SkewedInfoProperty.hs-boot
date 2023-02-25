module Stratosphere.Glue.Table.SkewedInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SkewedInfoProperty :: Prelude.Type
instance ToResourceProperties SkewedInfoProperty
instance JSON.ToJSON SkewedInfoProperty