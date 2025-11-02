module Stratosphere.S3.Bucket.RoutingRuleConditionProperty (
        RoutingRuleConditionProperty(..), mkRoutingRuleConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingRuleConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrulecondition.html>
    RoutingRuleConditionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrulecondition.html#cfn-s3-bucket-routingrulecondition-httperrorcodereturnedequals>
                                  httpErrorCodeReturnedEquals :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrulecondition.html#cfn-s3-bucket-routingrulecondition-keyprefixequals>
                                  keyPrefixEquals :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingRuleConditionProperty :: RoutingRuleConditionProperty
mkRoutingRuleConditionProperty
  = RoutingRuleConditionProperty
      {haddock_workaround_ = (),
       httpErrorCodeReturnedEquals = Prelude.Nothing,
       keyPrefixEquals = Prelude.Nothing}
instance ToResourceProperties RoutingRuleConditionProperty where
  toResourceProperties RoutingRuleConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RoutingRuleCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpErrorCodeReturnedEquals"
                              Prelude.<$> httpErrorCodeReturnedEquals,
                            (JSON..=) "KeyPrefixEquals" Prelude.<$> keyPrefixEquals])}
instance JSON.ToJSON RoutingRuleConditionProperty where
  toJSON RoutingRuleConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpErrorCodeReturnedEquals"
                 Prelude.<$> httpErrorCodeReturnedEquals,
               (JSON..=) "KeyPrefixEquals" Prelude.<$> keyPrefixEquals]))
instance Property "HttpErrorCodeReturnedEquals" RoutingRuleConditionProperty where
  type PropertyType "HttpErrorCodeReturnedEquals" RoutingRuleConditionProperty = Value Prelude.Text
  set newValue RoutingRuleConditionProperty {..}
    = RoutingRuleConditionProperty
        {httpErrorCodeReturnedEquals = Prelude.pure newValue, ..}
instance Property "KeyPrefixEquals" RoutingRuleConditionProperty where
  type PropertyType "KeyPrefixEquals" RoutingRuleConditionProperty = Value Prelude.Text
  set newValue RoutingRuleConditionProperty {..}
    = RoutingRuleConditionProperty
        {keyPrefixEquals = Prelude.pure newValue, ..}