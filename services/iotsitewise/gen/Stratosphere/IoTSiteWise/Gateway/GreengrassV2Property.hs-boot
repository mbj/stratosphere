module Stratosphere.IoTSiteWise.Gateway.GreengrassV2Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GreengrassV2Property :: Prelude.Type
instance ToResourceProperties GreengrassV2Property
instance JSON.ToJSON GreengrassV2Property