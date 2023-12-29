module Stratosphere.MediaStore.Container.MetricPolicyRuleProperty (
        MetricPolicyRuleProperty(..), mkMetricPolicyRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricPolicyRuleProperty
  = MetricPolicyRuleProperty {objectGroup :: (Value Prelude.Text),
                              objectGroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricPolicyRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MetricPolicyRuleProperty
mkMetricPolicyRuleProperty objectGroup objectGroupName
  = MetricPolicyRuleProperty
      {objectGroup = objectGroup, objectGroupName = objectGroupName}
instance ToResourceProperties MetricPolicyRuleProperty where
  toResourceProperties MetricPolicyRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaStore::Container.MetricPolicyRule",
         supportsTags = Prelude.False,
         properties = ["ObjectGroup" JSON..= objectGroup,
                       "ObjectGroupName" JSON..= objectGroupName]}
instance JSON.ToJSON MetricPolicyRuleProperty where
  toJSON MetricPolicyRuleProperty {..}
    = JSON.object
        ["ObjectGroup" JSON..= objectGroup,
         "ObjectGroupName" JSON..= objectGroupName]
instance Property "ObjectGroup" MetricPolicyRuleProperty where
  type PropertyType "ObjectGroup" MetricPolicyRuleProperty = Value Prelude.Text
  set newValue MetricPolicyRuleProperty {..}
    = MetricPolicyRuleProperty {objectGroup = newValue, ..}
instance Property "ObjectGroupName" MetricPolicyRuleProperty where
  type PropertyType "ObjectGroupName" MetricPolicyRuleProperty = Value Prelude.Text
  set newValue MetricPolicyRuleProperty {..}
    = MetricPolicyRuleProperty {objectGroupName = newValue, ..}