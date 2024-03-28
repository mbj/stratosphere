module Stratosphere.WAFv2.WebACL.AWSManagedRulesACFPRuleSetProperty (
        module Exports, AWSManagedRulesACFPRuleSetProperty(..),
        mkAWSManagedRulesACFPRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RequestInspectionACFPProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSManagedRulesACFPRuleSetProperty
  = AWSManagedRulesACFPRuleSetProperty {creationPath :: (Value Prelude.Text),
                                        enableRegexInPath :: (Prelude.Maybe (Value Prelude.Bool)),
                                        registrationPagePath :: (Value Prelude.Text),
                                        requestInspection :: RequestInspectionACFPProperty,
                                        responseInspection :: (Prelude.Maybe ResponseInspectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSManagedRulesACFPRuleSetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> RequestInspectionACFPProperty
        -> AWSManagedRulesACFPRuleSetProperty
mkAWSManagedRulesACFPRuleSetProperty
  creationPath
  registrationPagePath
  requestInspection
  = AWSManagedRulesACFPRuleSetProperty
      {creationPath = creationPath,
       registrationPagePath = registrationPagePath,
       requestInspection = requestInspection,
       enableRegexInPath = Prelude.Nothing,
       responseInspection = Prelude.Nothing}
instance ToResourceProperties AWSManagedRulesACFPRuleSetProperty where
  toResourceProperties AWSManagedRulesACFPRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AWSManagedRulesACFPRuleSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CreationPath" JSON..= creationPath,
                            "RegistrationPagePath" JSON..= registrationPagePath,
                            "RequestInspection" JSON..= requestInspection]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableRegexInPath" Prelude.<$> enableRegexInPath,
                               (JSON..=) "ResponseInspection" Prelude.<$> responseInspection]))}
instance JSON.ToJSON AWSManagedRulesACFPRuleSetProperty where
  toJSON AWSManagedRulesACFPRuleSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CreationPath" JSON..= creationPath,
               "RegistrationPagePath" JSON..= registrationPagePath,
               "RequestInspection" JSON..= requestInspection]
              (Prelude.catMaybes
                 [(JSON..=) "EnableRegexInPath" Prelude.<$> enableRegexInPath,
                  (JSON..=) "ResponseInspection" Prelude.<$> responseInspection])))
instance Property "CreationPath" AWSManagedRulesACFPRuleSetProperty where
  type PropertyType "CreationPath" AWSManagedRulesACFPRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesACFPRuleSetProperty {..}
    = AWSManagedRulesACFPRuleSetProperty {creationPath = newValue, ..}
instance Property "EnableRegexInPath" AWSManagedRulesACFPRuleSetProperty where
  type PropertyType "EnableRegexInPath" AWSManagedRulesACFPRuleSetProperty = Value Prelude.Bool
  set newValue AWSManagedRulesACFPRuleSetProperty {..}
    = AWSManagedRulesACFPRuleSetProperty
        {enableRegexInPath = Prelude.pure newValue, ..}
instance Property "RegistrationPagePath" AWSManagedRulesACFPRuleSetProperty where
  type PropertyType "RegistrationPagePath" AWSManagedRulesACFPRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesACFPRuleSetProperty {..}
    = AWSManagedRulesACFPRuleSetProperty
        {registrationPagePath = newValue, ..}
instance Property "RequestInspection" AWSManagedRulesACFPRuleSetProperty where
  type PropertyType "RequestInspection" AWSManagedRulesACFPRuleSetProperty = RequestInspectionACFPProperty
  set newValue AWSManagedRulesACFPRuleSetProperty {..}
    = AWSManagedRulesACFPRuleSetProperty
        {requestInspection = newValue, ..}
instance Property "ResponseInspection" AWSManagedRulesACFPRuleSetProperty where
  type PropertyType "ResponseInspection" AWSManagedRulesACFPRuleSetProperty = ResponseInspectionProperty
  set newValue AWSManagedRulesACFPRuleSetProperty {..}
    = AWSManagedRulesACFPRuleSetProperty
        {responseInspection = Prelude.pure newValue, ..}