module Stratosphere.Lightsail.Distribution.CookieObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CookieObjectProperty :: Prelude.Type
instance ToResourceProperties CookieObjectProperty
instance JSON.ToJSON CookieObjectProperty