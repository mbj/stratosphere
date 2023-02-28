module Stratosphere.SecretsManager.RotationSchedule (
        module Exports, RotationSchedule(..), mkRotationSchedule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecretsManager.RotationSchedule.HostedRotationLambdaProperty as Exports
import {-# SOURCE #-} Stratosphere.SecretsManager.RotationSchedule.RotationRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RotationSchedule
  = RotationSchedule {hostedRotationLambda :: (Prelude.Maybe HostedRotationLambdaProperty),
                      rotateImmediatelyOnUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
                      rotationLambdaARN :: (Prelude.Maybe (Value Prelude.Text)),
                      rotationRules :: (Prelude.Maybe RotationRulesProperty),
                      secretId :: (Value Prelude.Text)}
mkRotationSchedule :: Value Prelude.Text -> RotationSchedule
mkRotationSchedule secretId
  = RotationSchedule
      {secretId = secretId, hostedRotationLambda = Prelude.Nothing,
       rotateImmediatelyOnUpdate = Prelude.Nothing,
       rotationLambdaARN = Prelude.Nothing,
       rotationRules = Prelude.Nothing}
instance ToResourceProperties RotationSchedule where
  toResourceProperties RotationSchedule {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::RotationSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretId" JSON..= secretId]
                           (Prelude.catMaybes
                              [(JSON..=) "HostedRotationLambda" Prelude.<$> hostedRotationLambda,
                               (JSON..=) "RotateImmediatelyOnUpdate"
                                 Prelude.<$> rotateImmediatelyOnUpdate,
                               (JSON..=) "RotationLambdaARN" Prelude.<$> rotationLambdaARN,
                               (JSON..=) "RotationRules" Prelude.<$> rotationRules]))}
instance JSON.ToJSON RotationSchedule where
  toJSON RotationSchedule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretId" JSON..= secretId]
              (Prelude.catMaybes
                 [(JSON..=) "HostedRotationLambda" Prelude.<$> hostedRotationLambda,
                  (JSON..=) "RotateImmediatelyOnUpdate"
                    Prelude.<$> rotateImmediatelyOnUpdate,
                  (JSON..=) "RotationLambdaARN" Prelude.<$> rotationLambdaARN,
                  (JSON..=) "RotationRules" Prelude.<$> rotationRules])))
instance Property "HostedRotationLambda" RotationSchedule where
  type PropertyType "HostedRotationLambda" RotationSchedule = HostedRotationLambdaProperty
  set newValue RotationSchedule {..}
    = RotationSchedule
        {hostedRotationLambda = Prelude.pure newValue, ..}
instance Property "RotateImmediatelyOnUpdate" RotationSchedule where
  type PropertyType "RotateImmediatelyOnUpdate" RotationSchedule = Value Prelude.Bool
  set newValue RotationSchedule {..}
    = RotationSchedule
        {rotateImmediatelyOnUpdate = Prelude.pure newValue, ..}
instance Property "RotationLambdaARN" RotationSchedule where
  type PropertyType "RotationLambdaARN" RotationSchedule = Value Prelude.Text
  set newValue RotationSchedule {..}
    = RotationSchedule {rotationLambdaARN = Prelude.pure newValue, ..}
instance Property "RotationRules" RotationSchedule where
  type PropertyType "RotationRules" RotationSchedule = RotationRulesProperty
  set newValue RotationSchedule {..}
    = RotationSchedule {rotationRules = Prelude.pure newValue, ..}
instance Property "SecretId" RotationSchedule where
  type PropertyType "SecretId" RotationSchedule = Value Prelude.Text
  set newValue RotationSchedule {..}
    = RotationSchedule {secretId = newValue, ..}