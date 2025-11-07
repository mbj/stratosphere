module Stratosphere.Synthetics.Canary.RetryConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetryConfigProperty :: Prelude.Type
instance ToResourceProperties RetryConfigProperty
instance Prelude.Eq RetryConfigProperty
instance Prelude.Show RetryConfigProperty
instance JSON.ToJSON RetryConfigProperty