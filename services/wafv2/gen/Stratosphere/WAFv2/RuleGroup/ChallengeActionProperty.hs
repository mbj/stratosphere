module Stratosphere.WAFv2.RuleGroup.ChallengeActionProperty (
        module Exports, ChallengeActionProperty(..),
        mkChallengeActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data ChallengeActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-challengeaction.html>
    ChallengeActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-challengeaction.html#cfn-wafv2-rulegroup-challengeaction-customrequesthandling>
                             customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChallengeActionProperty :: ChallengeActionProperty
mkChallengeActionProperty
  = ChallengeActionProperty
      {haddock_workaround_ = (), customRequestHandling = Prelude.Nothing}
instance ToResourceProperties ChallengeActionProperty where
  toResourceProperties ChallengeActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.ChallengeAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRequestHandling"
                              Prelude.<$> customRequestHandling])}
instance JSON.ToJSON ChallengeActionProperty where
  toJSON ChallengeActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRequestHandling"
                 Prelude.<$> customRequestHandling]))
instance Property "CustomRequestHandling" ChallengeActionProperty where
  type PropertyType "CustomRequestHandling" ChallengeActionProperty = CustomRequestHandlingProperty
  set newValue ChallengeActionProperty {..}
    = ChallengeActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}