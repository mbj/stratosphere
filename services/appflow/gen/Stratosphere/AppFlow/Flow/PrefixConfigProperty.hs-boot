module Stratosphere.AppFlow.Flow.PrefixConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PrefixConfigProperty :: Prelude.Type
instance ToResourceProperties PrefixConfigProperty
instance JSON.ToJSON PrefixConfigProperty