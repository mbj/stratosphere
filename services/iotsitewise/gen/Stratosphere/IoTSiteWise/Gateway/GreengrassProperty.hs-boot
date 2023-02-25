module Stratosphere.IoTSiteWise.Gateway.GreengrassProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GreengrassProperty :: Prelude.Type
instance ToResourceProperties GreengrassProperty
instance JSON.ToJSON GreengrassProperty