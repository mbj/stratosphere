module Stratosphere.ACMPCA.Certificate.ApiPassthroughProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApiPassthroughProperty :: Prelude.Type
instance ToResourceProperties ApiPassthroughProperty
instance JSON.ToJSON ApiPassthroughProperty