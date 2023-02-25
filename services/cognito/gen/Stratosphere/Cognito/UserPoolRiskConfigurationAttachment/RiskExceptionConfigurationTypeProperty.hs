module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationTypeProperty (
        RiskExceptionConfigurationTypeProperty(..),
        mkRiskExceptionConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RiskExceptionConfigurationTypeProperty
  = RiskExceptionConfigurationTypeProperty {blockedIPRangeList :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                            skippedIPRangeList :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkRiskExceptionConfigurationTypeProperty ::
  RiskExceptionConfigurationTypeProperty
mkRiskExceptionConfigurationTypeProperty
  = RiskExceptionConfigurationTypeProperty
      {blockedIPRangeList = Prelude.Nothing,
       skippedIPRangeList = Prelude.Nothing}
instance ToResourceProperties RiskExceptionConfigurationTypeProperty where
  toResourceProperties RiskExceptionConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockedIPRangeList" Prelude.<$> blockedIPRangeList,
                            (JSON..=) "SkippedIPRangeList" Prelude.<$> skippedIPRangeList])}
instance JSON.ToJSON RiskExceptionConfigurationTypeProperty where
  toJSON RiskExceptionConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockedIPRangeList" Prelude.<$> blockedIPRangeList,
               (JSON..=) "SkippedIPRangeList" Prelude.<$> skippedIPRangeList]))
instance Property "BlockedIPRangeList" RiskExceptionConfigurationTypeProperty where
  type PropertyType "BlockedIPRangeList" RiskExceptionConfigurationTypeProperty = ValueList (Value Prelude.Text)
  set newValue RiskExceptionConfigurationTypeProperty {..}
    = RiskExceptionConfigurationTypeProperty
        {blockedIPRangeList = Prelude.pure newValue, ..}
instance Property "SkippedIPRangeList" RiskExceptionConfigurationTypeProperty where
  type PropertyType "SkippedIPRangeList" RiskExceptionConfigurationTypeProperty = ValueList (Value Prelude.Text)
  set newValue RiskExceptionConfigurationTypeProperty {..}
    = RiskExceptionConfigurationTypeProperty
        {skippedIPRangeList = Prelude.pure newValue, ..}