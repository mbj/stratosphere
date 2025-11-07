module Stratosphere.WAFv2.WebACL.RegexProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RegexProperty :: Prelude.Type
instance ToResourceProperties RegexProperty
instance Prelude.Eq RegexProperty
instance Prelude.Show RegexProperty
instance JSON.ToJSON RegexProperty