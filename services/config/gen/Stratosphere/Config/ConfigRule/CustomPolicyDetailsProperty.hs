module Stratosphere.Config.ConfigRule.CustomPolicyDetailsProperty (
        CustomPolicyDetailsProperty(..), mkCustomPolicyDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPolicyDetailsProperty
  = CustomPolicyDetailsProperty {enableDebugLogDelivery :: (Prelude.Maybe (Value Prelude.Bool)),
                                 policyRuntime :: (Prelude.Maybe (Value Prelude.Text)),
                                 policyText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPolicyDetailsProperty :: CustomPolicyDetailsProperty
mkCustomPolicyDetailsProperty
  = CustomPolicyDetailsProperty
      {enableDebugLogDelivery = Prelude.Nothing,
       policyRuntime = Prelude.Nothing, policyText = Prelude.Nothing}
instance ToResourceProperties CustomPolicyDetailsProperty where
  toResourceProperties CustomPolicyDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.CustomPolicyDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableDebugLogDelivery"
                              Prelude.<$> enableDebugLogDelivery,
                            (JSON..=) "PolicyRuntime" Prelude.<$> policyRuntime,
                            (JSON..=) "PolicyText" Prelude.<$> policyText])}
instance JSON.ToJSON CustomPolicyDetailsProperty where
  toJSON CustomPolicyDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableDebugLogDelivery"
                 Prelude.<$> enableDebugLogDelivery,
               (JSON..=) "PolicyRuntime" Prelude.<$> policyRuntime,
               (JSON..=) "PolicyText" Prelude.<$> policyText]))
instance Property "EnableDebugLogDelivery" CustomPolicyDetailsProperty where
  type PropertyType "EnableDebugLogDelivery" CustomPolicyDetailsProperty = Value Prelude.Bool
  set newValue CustomPolicyDetailsProperty {..}
    = CustomPolicyDetailsProperty
        {enableDebugLogDelivery = Prelude.pure newValue, ..}
instance Property "PolicyRuntime" CustomPolicyDetailsProperty where
  type PropertyType "PolicyRuntime" CustomPolicyDetailsProperty = Value Prelude.Text
  set newValue CustomPolicyDetailsProperty {..}
    = CustomPolicyDetailsProperty
        {policyRuntime = Prelude.pure newValue, ..}
instance Property "PolicyText" CustomPolicyDetailsProperty where
  type PropertyType "PolicyText" CustomPolicyDetailsProperty = Value Prelude.Text
  set newValue CustomPolicyDetailsProperty {..}
    = CustomPolicyDetailsProperty
        {policyText = Prelude.pure newValue, ..}