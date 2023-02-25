module Stratosphere.Route53.HostedZone.HostedZoneTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HostedZoneTagProperty :: Prelude.Type
instance ToResourceProperties HostedZoneTagProperty
instance JSON.ToJSON HostedZoneTagProperty