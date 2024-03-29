module Stratosphere.Route53.RecordSet.GeoLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GeoLocationProperty :: Prelude.Type
instance ToResourceProperties GeoLocationProperty
instance Prelude.Eq GeoLocationProperty
instance Prelude.Show GeoLocationProperty
instance JSON.ToJSON GeoLocationProperty