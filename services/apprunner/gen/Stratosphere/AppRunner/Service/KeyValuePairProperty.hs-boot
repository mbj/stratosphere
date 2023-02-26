module Stratosphere.AppRunner.Service.KeyValuePairProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyValuePairProperty :: Prelude.Type
instance ToResourceProperties KeyValuePairProperty
instance JSON.ToJSON KeyValuePairProperty