module Stratosphere.ElasticBeanstalk.Application.MaxAgeRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MaxAgeRuleProperty :: Prelude.Type
instance ToResourceProperties MaxAgeRuleProperty
instance Prelude.Eq MaxAgeRuleProperty
instance Prelude.Show MaxAgeRuleProperty
instance JSON.ToJSON MaxAgeRuleProperty