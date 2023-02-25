module Stratosphere.IoTSiteWise.AccessPolicy.IamUserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IamUserProperty :: Prelude.Type
instance ToResourceProperties IamUserProperty
instance JSON.ToJSON IamUserProperty