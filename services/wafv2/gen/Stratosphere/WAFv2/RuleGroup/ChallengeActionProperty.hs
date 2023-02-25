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
  = ChallengeActionProperty {customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
mkChallengeActionProperty :: ChallengeActionProperty
mkChallengeActionProperty
  = ChallengeActionProperty {customRequestHandling = Prelude.Nothing}
instance ToResourceProperties ChallengeActionProperty where
  toResourceProperties ChallengeActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.ChallengeAction",
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
  set newValue ChallengeActionProperty {}
    = ChallengeActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}