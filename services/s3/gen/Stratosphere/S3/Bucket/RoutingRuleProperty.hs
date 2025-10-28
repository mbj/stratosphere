module Stratosphere.S3.Bucket.RoutingRuleProperty (
        module Exports, RoutingRuleProperty(..), mkRoutingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.RedirectRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.RoutingRuleConditionProperty as Exports
import Stratosphere.ResourceProperties
data RoutingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrule.html>
    RoutingRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrule.html#cfn-s3-bucket-routingrule-redirectrule>
                         redirectRule :: RedirectRuleProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-routingrule.html#cfn-s3-bucket-routingrule-routingrulecondition>
                         routingRuleCondition :: (Prelude.Maybe RoutingRuleConditionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingRuleProperty ::
  RedirectRuleProperty -> RoutingRuleProperty
mkRoutingRuleProperty redirectRule
  = RoutingRuleProperty
      {haddock_workaround_ = (), redirectRule = redirectRule,
       routingRuleCondition = Prelude.Nothing}
instance ToResourceProperties RoutingRuleProperty where
  toResourceProperties RoutingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RoutingRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RedirectRule" JSON..= redirectRule]
                           (Prelude.catMaybes
                              [(JSON..=) "RoutingRuleCondition"
                                 Prelude.<$> routingRuleCondition]))}
instance JSON.ToJSON RoutingRuleProperty where
  toJSON RoutingRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RedirectRule" JSON..= redirectRule]
              (Prelude.catMaybes
                 [(JSON..=) "RoutingRuleCondition"
                    Prelude.<$> routingRuleCondition])))
instance Property "RedirectRule" RoutingRuleProperty where
  type PropertyType "RedirectRule" RoutingRuleProperty = RedirectRuleProperty
  set newValue RoutingRuleProperty {..}
    = RoutingRuleProperty {redirectRule = newValue, ..}
instance Property "RoutingRuleCondition" RoutingRuleProperty where
  type PropertyType "RoutingRuleCondition" RoutingRuleProperty = RoutingRuleConditionProperty
  set newValue RoutingRuleProperty {..}
    = RoutingRuleProperty
        {routingRuleCondition = Prelude.pure newValue, ..}