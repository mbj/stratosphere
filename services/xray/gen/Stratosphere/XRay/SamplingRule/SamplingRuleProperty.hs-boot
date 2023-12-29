module Stratosphere.XRay.SamplingRule.SamplingRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SamplingRuleProperty :: Prelude.Type
instance ToResourceProperties SamplingRuleProperty
instance Prelude.Eq SamplingRuleProperty
instance Prelude.Show SamplingRuleProperty
instance JSON.ToJSON SamplingRuleProperty