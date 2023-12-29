module Stratosphere.ElasticBeanstalk.Application.MaxCountRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MaxCountRuleProperty :: Prelude.Type
instance ToResourceProperties MaxCountRuleProperty
instance Prelude.Eq MaxCountRuleProperty
instance Prelude.Show MaxCountRuleProperty
instance JSON.ToJSON MaxCountRuleProperty