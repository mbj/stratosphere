module Stratosphere.Lambda.EventInvokeConfig.OnSuccessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OnSuccessProperty :: Prelude.Type
instance ToResourceProperties OnSuccessProperty
instance JSON.ToJSON OnSuccessProperty