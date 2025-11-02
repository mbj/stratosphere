module Stratosphere.WAFv2.WebACL.JsonBodyProperty (
        module Exports, JsonBodyProperty(..), mkJsonBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.JsonMatchPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonBodyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html>
    JsonBodyProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-invalidfallbackbehavior>
                      invalidFallbackBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-matchpattern>
                      matchPattern :: JsonMatchPatternProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-matchscope>
                      matchScope :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-oversizehandling>
                      oversizeHandling :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonBodyProperty ::
  JsonMatchPatternProperty -> Value Prelude.Text -> JsonBodyProperty
mkJsonBodyProperty matchPattern matchScope
  = JsonBodyProperty
      {haddock_workaround_ = (), matchPattern = matchPattern,
       matchScope = matchScope, invalidFallbackBehavior = Prelude.Nothing,
       oversizeHandling = Prelude.Nothing}
instance ToResourceProperties JsonBodyProperty where
  toResourceProperties JsonBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.JsonBody",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchPattern" JSON..= matchPattern,
                            "MatchScope" JSON..= matchScope]
                           (Prelude.catMaybes
                              [(JSON..=) "InvalidFallbackBehavior"
                                 Prelude.<$> invalidFallbackBehavior,
                               (JSON..=) "OversizeHandling" Prelude.<$> oversizeHandling]))}
instance JSON.ToJSON JsonBodyProperty where
  toJSON JsonBodyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchPattern" JSON..= matchPattern,
               "MatchScope" JSON..= matchScope]
              (Prelude.catMaybes
                 [(JSON..=) "InvalidFallbackBehavior"
                    Prelude.<$> invalidFallbackBehavior,
                  (JSON..=) "OversizeHandling" Prelude.<$> oversizeHandling])))
instance Property "InvalidFallbackBehavior" JsonBodyProperty where
  type PropertyType "InvalidFallbackBehavior" JsonBodyProperty = Value Prelude.Text
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty
        {invalidFallbackBehavior = Prelude.pure newValue, ..}
instance Property "MatchPattern" JsonBodyProperty where
  type PropertyType "MatchPattern" JsonBodyProperty = JsonMatchPatternProperty
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty {matchPattern = newValue, ..}
instance Property "MatchScope" JsonBodyProperty where
  type PropertyType "MatchScope" JsonBodyProperty = Value Prelude.Text
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty {matchScope = newValue, ..}
instance Property "OversizeHandling" JsonBodyProperty where
  type PropertyType "OversizeHandling" JsonBodyProperty = Value Prelude.Text
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty {oversizeHandling = Prelude.pure newValue, ..}