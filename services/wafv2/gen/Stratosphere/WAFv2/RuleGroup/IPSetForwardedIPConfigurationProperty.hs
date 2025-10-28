module Stratosphere.WAFv2.RuleGroup.IPSetForwardedIPConfigurationProperty (
        IPSetForwardedIPConfigurationProperty(..),
        mkIPSetForwardedIPConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetForwardedIPConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html>
    IPSetForwardedIPConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-fallbackbehavior>
                                           fallbackBehavior :: (Value Prelude.Text),
                                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-headername>
                                           headerName :: (Value Prelude.Text),
                                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-position>
                                           position :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSetForwardedIPConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> IPSetForwardedIPConfigurationProperty
mkIPSetForwardedIPConfigurationProperty
  fallbackBehavior
  headerName
  position
  = IPSetForwardedIPConfigurationProperty
      {fallbackBehavior = fallbackBehavior, headerName = headerName,
       position = position}
instance ToResourceProperties IPSetForwardedIPConfigurationProperty where
  toResourceProperties IPSetForwardedIPConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.IPSetForwardedIPConfiguration",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior,
                       "HeaderName" JSON..= headerName, "Position" JSON..= position]}
instance JSON.ToJSON IPSetForwardedIPConfigurationProperty where
  toJSON IPSetForwardedIPConfigurationProperty {..}
    = JSON.object
        ["FallbackBehavior" JSON..= fallbackBehavior,
         "HeaderName" JSON..= headerName, "Position" JSON..= position]
instance Property "FallbackBehavior" IPSetForwardedIPConfigurationProperty where
  type PropertyType "FallbackBehavior" IPSetForwardedIPConfigurationProperty = Value Prelude.Text
  set newValue IPSetForwardedIPConfigurationProperty {..}
    = IPSetForwardedIPConfigurationProperty
        {fallbackBehavior = newValue, ..}
instance Property "HeaderName" IPSetForwardedIPConfigurationProperty where
  type PropertyType "HeaderName" IPSetForwardedIPConfigurationProperty = Value Prelude.Text
  set newValue IPSetForwardedIPConfigurationProperty {..}
    = IPSetForwardedIPConfigurationProperty {headerName = newValue, ..}
instance Property "Position" IPSetForwardedIPConfigurationProperty where
  type PropertyType "Position" IPSetForwardedIPConfigurationProperty = Value Prelude.Text
  set newValue IPSetForwardedIPConfigurationProperty {..}
    = IPSetForwardedIPConfigurationProperty {position = newValue, ..}