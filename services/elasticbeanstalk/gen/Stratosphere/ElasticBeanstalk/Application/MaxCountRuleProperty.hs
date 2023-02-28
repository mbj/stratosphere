module Stratosphere.ElasticBeanstalk.Application.MaxCountRuleProperty (
        MaxCountRuleProperty(..), mkMaxCountRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaxCountRuleProperty
  = MaxCountRuleProperty {deleteSourceFromS3 :: (Prelude.Maybe (Value Prelude.Bool)),
                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          maxCount :: (Prelude.Maybe (Value Prelude.Integer))}
mkMaxCountRuleProperty :: MaxCountRuleProperty
mkMaxCountRuleProperty
  = MaxCountRuleProperty
      {deleteSourceFromS3 = Prelude.Nothing, enabled = Prelude.Nothing,
       maxCount = Prelude.Nothing}
instance ToResourceProperties MaxCountRuleProperty where
  toResourceProperties MaxCountRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application.MaxCountRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteSourceFromS3" Prelude.<$> deleteSourceFromS3,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "MaxCount" Prelude.<$> maxCount])}
instance JSON.ToJSON MaxCountRuleProperty where
  toJSON MaxCountRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteSourceFromS3" Prelude.<$> deleteSourceFromS3,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "MaxCount" Prelude.<$> maxCount]))
instance Property "DeleteSourceFromS3" MaxCountRuleProperty where
  type PropertyType "DeleteSourceFromS3" MaxCountRuleProperty = Value Prelude.Bool
  set newValue MaxCountRuleProperty {..}
    = MaxCountRuleProperty
        {deleteSourceFromS3 = Prelude.pure newValue, ..}
instance Property "Enabled" MaxCountRuleProperty where
  type PropertyType "Enabled" MaxCountRuleProperty = Value Prelude.Bool
  set newValue MaxCountRuleProperty {..}
    = MaxCountRuleProperty {enabled = Prelude.pure newValue, ..}
instance Property "MaxCount" MaxCountRuleProperty where
  type PropertyType "MaxCount" MaxCountRuleProperty = Value Prelude.Integer
  set newValue MaxCountRuleProperty {..}
    = MaxCountRuleProperty {maxCount = Prelude.pure newValue, ..}