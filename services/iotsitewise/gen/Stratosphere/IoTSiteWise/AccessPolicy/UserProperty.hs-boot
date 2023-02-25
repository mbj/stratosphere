module Stratosphere.IoTSiteWise.AccessPolicy.UserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserProperty :: Prelude.Type
instance ToResourceProperties UserProperty
instance JSON.ToJSON UserProperty