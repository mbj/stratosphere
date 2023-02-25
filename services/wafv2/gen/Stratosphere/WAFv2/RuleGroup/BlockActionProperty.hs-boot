module Stratosphere.WAFv2.RuleGroup.BlockActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BlockActionProperty :: Prelude.Type
instance ToResourceProperties BlockActionProperty
instance JSON.ToJSON BlockActionProperty