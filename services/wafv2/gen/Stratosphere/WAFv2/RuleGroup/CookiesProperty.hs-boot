module Stratosphere.WAFv2.RuleGroup.CookiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CookiesProperty :: Prelude.Type
instance ToResourceProperties CookiesProperty
instance JSON.ToJSON CookiesProperty