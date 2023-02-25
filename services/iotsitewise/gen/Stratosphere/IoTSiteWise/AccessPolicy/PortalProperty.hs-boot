module Stratosphere.IoTSiteWise.AccessPolicy.PortalProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortalProperty :: Prelude.Type
instance ToResourceProperties PortalProperty
instance JSON.ToJSON PortalProperty