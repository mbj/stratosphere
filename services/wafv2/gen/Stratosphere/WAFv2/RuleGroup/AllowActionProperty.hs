module Stratosphere.WAFv2.RuleGroup.AllowActionProperty (
        module Exports, AllowActionProperty(..), mkAllowActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data AllowActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-allowaction.html>
    AllowActionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-allowaction.html#cfn-wafv2-rulegroup-allowaction-customrequesthandling>
                         customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAllowActionProperty :: AllowActionProperty
mkAllowActionProperty
  = AllowActionProperty
      {haddock_workaround_ = (), customRequestHandling = Prelude.Nothing}
instance ToResourceProperties AllowActionProperty where
  toResourceProperties AllowActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.AllowAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRequestHandling"
                              Prelude.<$> customRequestHandling])}
instance JSON.ToJSON AllowActionProperty where
  toJSON AllowActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRequestHandling"
                 Prelude.<$> customRequestHandling]))
instance Property "CustomRequestHandling" AllowActionProperty where
  type PropertyType "CustomRequestHandling" AllowActionProperty = CustomRequestHandlingProperty
  set newValue AllowActionProperty {..}
    = AllowActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}