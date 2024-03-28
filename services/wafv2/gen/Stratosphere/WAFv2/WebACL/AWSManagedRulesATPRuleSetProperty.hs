module Stratosphere.WAFv2.WebACL.AWSManagedRulesATPRuleSetProperty (
        module Exports, AWSManagedRulesATPRuleSetProperty(..),
        mkAWSManagedRulesATPRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RequestInspectionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSManagedRulesATPRuleSetProperty
  = AWSManagedRulesATPRuleSetProperty {enableRegexInPath :: (Prelude.Maybe (Value Prelude.Bool)),
                                       loginPath :: (Value Prelude.Text),
                                       requestInspection :: (Prelude.Maybe RequestInspectionProperty),
                                       responseInspection :: (Prelude.Maybe ResponseInspectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSManagedRulesATPRuleSetProperty ::
  Value Prelude.Text -> AWSManagedRulesATPRuleSetProperty
mkAWSManagedRulesATPRuleSetProperty loginPath
  = AWSManagedRulesATPRuleSetProperty
      {loginPath = loginPath, enableRegexInPath = Prelude.Nothing,
       requestInspection = Prelude.Nothing,
       responseInspection = Prelude.Nothing}
instance ToResourceProperties AWSManagedRulesATPRuleSetProperty where
  toResourceProperties AWSManagedRulesATPRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AWSManagedRulesATPRuleSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LoginPath" JSON..= loginPath]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableRegexInPath" Prelude.<$> enableRegexInPath,
                               (JSON..=) "RequestInspection" Prelude.<$> requestInspection,
                               (JSON..=) "ResponseInspection" Prelude.<$> responseInspection]))}
instance JSON.ToJSON AWSManagedRulesATPRuleSetProperty where
  toJSON AWSManagedRulesATPRuleSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LoginPath" JSON..= loginPath]
              (Prelude.catMaybes
                 [(JSON..=) "EnableRegexInPath" Prelude.<$> enableRegexInPath,
                  (JSON..=) "RequestInspection" Prelude.<$> requestInspection,
                  (JSON..=) "ResponseInspection" Prelude.<$> responseInspection])))
instance Property "EnableRegexInPath" AWSManagedRulesATPRuleSetProperty where
  type PropertyType "EnableRegexInPath" AWSManagedRulesATPRuleSetProperty = Value Prelude.Bool
  set newValue AWSManagedRulesATPRuleSetProperty {..}
    = AWSManagedRulesATPRuleSetProperty
        {enableRegexInPath = Prelude.pure newValue, ..}
instance Property "LoginPath" AWSManagedRulesATPRuleSetProperty where
  type PropertyType "LoginPath" AWSManagedRulesATPRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesATPRuleSetProperty {..}
    = AWSManagedRulesATPRuleSetProperty {loginPath = newValue, ..}
instance Property "RequestInspection" AWSManagedRulesATPRuleSetProperty where
  type PropertyType "RequestInspection" AWSManagedRulesATPRuleSetProperty = RequestInspectionProperty
  set newValue AWSManagedRulesATPRuleSetProperty {..}
    = AWSManagedRulesATPRuleSetProperty
        {requestInspection = Prelude.pure newValue, ..}
instance Property "ResponseInspection" AWSManagedRulesATPRuleSetProperty where
  type PropertyType "ResponseInspection" AWSManagedRulesATPRuleSetProperty = ResponseInspectionProperty
  set newValue AWSManagedRulesATPRuleSetProperty {..}
    = AWSManagedRulesATPRuleSetProperty
        {responseInspection = Prelude.pure newValue, ..}