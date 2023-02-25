module Stratosphere.DataSync.LocationNFS.OnPremConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OnPremConfigProperty :: Prelude.Type
instance ToResourceProperties OnPremConfigProperty
instance JSON.ToJSON OnPremConfigProperty