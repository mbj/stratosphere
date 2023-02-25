module Stratosphere.WAF.IPSet.IPSetDescriptorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IPSetDescriptorProperty :: Prelude.Type
instance ToResourceProperties IPSetDescriptorProperty
instance JSON.ToJSON IPSetDescriptorProperty