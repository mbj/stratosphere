module Stratosphere.Lambda.Function.SnapStartProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SnapStartProperty :: Prelude.Type
instance ToResourceProperties SnapStartProperty
instance Prelude.Eq SnapStartProperty
instance Prelude.Show SnapStartProperty
instance JSON.ToJSON SnapStartProperty