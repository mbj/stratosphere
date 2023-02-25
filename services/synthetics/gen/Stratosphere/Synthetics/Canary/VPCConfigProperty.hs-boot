module Stratosphere.Synthetics.Canary.VPCConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VPCConfigProperty :: Prelude.Type
instance ToResourceProperties VPCConfigProperty
instance JSON.ToJSON VPCConfigProperty