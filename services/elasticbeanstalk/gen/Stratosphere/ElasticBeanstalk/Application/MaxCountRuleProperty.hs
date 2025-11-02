module Stratosphere.ElasticBeanstalk.Application.MaxCountRuleProperty (
        MaxCountRuleProperty(..), mkMaxCountRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaxCountRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html>
    MaxCountRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-deletesourcefroms3>
                          deleteSourceFromS3 :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-enabled>
                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-maxcount>
                          maxCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaxCountRuleProperty :: MaxCountRuleProperty
mkMaxCountRuleProperty
  = MaxCountRuleProperty
      {haddock_workaround_ = (), deleteSourceFromS3 = Prelude.Nothing,
       enabled = Prelude.Nothing, maxCount = Prelude.Nothing}
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