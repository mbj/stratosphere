module Stratosphere.ElasticBeanstalk.Application.MaxAgeRuleProperty (
        MaxAgeRuleProperty(..), mkMaxAgeRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaxAgeRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html>
    MaxAgeRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-deletesourcefroms3>
                        deleteSourceFromS3 :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-enabled>
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-maxageindays>
                        maxAgeInDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaxAgeRuleProperty :: MaxAgeRuleProperty
mkMaxAgeRuleProperty
  = MaxAgeRuleProperty
      {haddock_workaround_ = (), deleteSourceFromS3 = Prelude.Nothing,
       enabled = Prelude.Nothing, maxAgeInDays = Prelude.Nothing}
instance ToResourceProperties MaxAgeRuleProperty where
  toResourceProperties MaxAgeRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application.MaxAgeRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteSourceFromS3" Prelude.<$> deleteSourceFromS3,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "MaxAgeInDays" Prelude.<$> maxAgeInDays])}
instance JSON.ToJSON MaxAgeRuleProperty where
  toJSON MaxAgeRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteSourceFromS3" Prelude.<$> deleteSourceFromS3,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "MaxAgeInDays" Prelude.<$> maxAgeInDays]))
instance Property "DeleteSourceFromS3" MaxAgeRuleProperty where
  type PropertyType "DeleteSourceFromS3" MaxAgeRuleProperty = Value Prelude.Bool
  set newValue MaxAgeRuleProperty {..}
    = MaxAgeRuleProperty
        {deleteSourceFromS3 = Prelude.pure newValue, ..}
instance Property "Enabled" MaxAgeRuleProperty where
  type PropertyType "Enabled" MaxAgeRuleProperty = Value Prelude.Bool
  set newValue MaxAgeRuleProperty {..}
    = MaxAgeRuleProperty {enabled = Prelude.pure newValue, ..}
instance Property "MaxAgeInDays" MaxAgeRuleProperty where
  type PropertyType "MaxAgeInDays" MaxAgeRuleProperty = Value Prelude.Integer
  set newValue MaxAgeRuleProperty {..}
    = MaxAgeRuleProperty {maxAgeInDays = Prelude.pure newValue, ..}