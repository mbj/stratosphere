module Stratosphere.IoTSiteWise.Portal.AlarmsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmsProperty :: Prelude.Type
instance ToResourceProperties AlarmsProperty
instance JSON.ToJSON AlarmsProperty