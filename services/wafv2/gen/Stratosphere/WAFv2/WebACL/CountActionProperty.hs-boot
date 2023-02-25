module Stratosphere.WAFv2.WebACL.CountActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CountActionProperty :: Prelude.Type
instance ToResourceProperties CountActionProperty
instance JSON.ToJSON CountActionProperty