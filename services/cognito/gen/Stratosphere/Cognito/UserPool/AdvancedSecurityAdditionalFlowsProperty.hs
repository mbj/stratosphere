module Stratosphere.Cognito.UserPool.AdvancedSecurityAdditionalFlowsProperty (
        AdvancedSecurityAdditionalFlowsProperty(..),
        mkAdvancedSecurityAdditionalFlowsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedSecurityAdditionalFlowsProperty
  = AdvancedSecurityAdditionalFlowsProperty {customAuthMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedSecurityAdditionalFlowsProperty ::
  AdvancedSecurityAdditionalFlowsProperty
mkAdvancedSecurityAdditionalFlowsProperty
  = AdvancedSecurityAdditionalFlowsProperty
      {customAuthMode = Prelude.Nothing}
instance ToResourceProperties AdvancedSecurityAdditionalFlowsProperty where
  toResourceProperties AdvancedSecurityAdditionalFlowsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.AdvancedSecurityAdditionalFlows",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomAuthMode" Prelude.<$> customAuthMode])}
instance JSON.ToJSON AdvancedSecurityAdditionalFlowsProperty where
  toJSON AdvancedSecurityAdditionalFlowsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomAuthMode" Prelude.<$> customAuthMode]))
instance Property "CustomAuthMode" AdvancedSecurityAdditionalFlowsProperty where
  type PropertyType "CustomAuthMode" AdvancedSecurityAdditionalFlowsProperty = Value Prelude.Text
  set newValue AdvancedSecurityAdditionalFlowsProperty {}
    = AdvancedSecurityAdditionalFlowsProperty
        {customAuthMode = Prelude.pure newValue, ..}