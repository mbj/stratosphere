module Stratosphere.Route53.RecordSetGroup.GeoLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GeoLocationProperty :: Prelude.Type
instance ToResourceProperties GeoLocationProperty
instance JSON.ToJSON GeoLocationProperty