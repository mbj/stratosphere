module Stratosphere.WAFv2.WebACL.AllowActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AllowActionProperty :: Prelude.Type
instance ToResourceProperties AllowActionProperty
instance JSON.ToJSON AllowActionProperty