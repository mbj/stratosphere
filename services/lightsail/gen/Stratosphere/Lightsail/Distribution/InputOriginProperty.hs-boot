module Stratosphere.Lightsail.Distribution.InputOriginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputOriginProperty :: Prelude.Type
instance ToResourceProperties InputOriginProperty
instance JSON.ToJSON InputOriginProperty