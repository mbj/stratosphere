module Stratosphere.Cognito.UserPool.UserPoolAddOnsProperty (
        module Exports, UserPoolAddOnsProperty(..),
        mkUserPoolAddOnsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.AdvancedSecurityAdditionalFlowsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolAddOnsProperty
  = UserPoolAddOnsProperty {advancedSecurityAdditionalFlows :: (Prelude.Maybe AdvancedSecurityAdditionalFlowsProperty),
                            advancedSecurityMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolAddOnsProperty :: UserPoolAddOnsProperty
mkUserPoolAddOnsProperty
  = UserPoolAddOnsProperty
      {advancedSecurityAdditionalFlows = Prelude.Nothing,
       advancedSecurityMode = Prelude.Nothing}
instance ToResourceProperties UserPoolAddOnsProperty where
  toResourceProperties UserPoolAddOnsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.UserPoolAddOns",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdvancedSecurityAdditionalFlows"
                              Prelude.<$> advancedSecurityAdditionalFlows,
                            (JSON..=) "AdvancedSecurityMode"
                              Prelude.<$> advancedSecurityMode])}
instance JSON.ToJSON UserPoolAddOnsProperty where
  toJSON UserPoolAddOnsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdvancedSecurityAdditionalFlows"
                 Prelude.<$> advancedSecurityAdditionalFlows,
               (JSON..=) "AdvancedSecurityMode"
                 Prelude.<$> advancedSecurityMode]))
instance Property "AdvancedSecurityAdditionalFlows" UserPoolAddOnsProperty where
  type PropertyType "AdvancedSecurityAdditionalFlows" UserPoolAddOnsProperty = AdvancedSecurityAdditionalFlowsProperty
  set newValue UserPoolAddOnsProperty {..}
    = UserPoolAddOnsProperty
        {advancedSecurityAdditionalFlows = Prelude.pure newValue, ..}
instance Property "AdvancedSecurityMode" UserPoolAddOnsProperty where
  type PropertyType "AdvancedSecurityMode" UserPoolAddOnsProperty = Value Prelude.Text
  set newValue UserPoolAddOnsProperty {..}
    = UserPoolAddOnsProperty
        {advancedSecurityMode = Prelude.pure newValue, ..}