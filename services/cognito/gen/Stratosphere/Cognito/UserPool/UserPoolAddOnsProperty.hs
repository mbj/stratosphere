module Stratosphere.Cognito.UserPool.UserPoolAddOnsProperty (
        UserPoolAddOnsProperty(..), mkUserPoolAddOnsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolAddOnsProperty
  = UserPoolAddOnsProperty {advancedSecurityMode :: (Prelude.Maybe (Value Prelude.Text))}
mkUserPoolAddOnsProperty :: UserPoolAddOnsProperty
mkUserPoolAddOnsProperty
  = UserPoolAddOnsProperty {advancedSecurityMode = Prelude.Nothing}
instance ToResourceProperties UserPoolAddOnsProperty where
  toResourceProperties UserPoolAddOnsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.UserPoolAddOns",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdvancedSecurityMode"
                              Prelude.<$> advancedSecurityMode])}
instance JSON.ToJSON UserPoolAddOnsProperty where
  toJSON UserPoolAddOnsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdvancedSecurityMode"
                 Prelude.<$> advancedSecurityMode]))
instance Property "AdvancedSecurityMode" UserPoolAddOnsProperty where
  type PropertyType "AdvancedSecurityMode" UserPoolAddOnsProperty = Value Prelude.Text
  set newValue UserPoolAddOnsProperty {}
    = UserPoolAddOnsProperty
        {advancedSecurityMode = Prelude.pure newValue, ..}