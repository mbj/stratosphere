module Stratosphere.AppMesh.Route.DurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DurationProperty :: Prelude.Type
instance ToResourceProperties DurationProperty
instance Prelude.Eq DurationProperty
instance Prelude.Show DurationProperty
instance JSON.ToJSON DurationProperty